package org.eclipse.fx.ide.fxgraph.ui.controller

import org.eclipse.fx.ide.fxgraph.fXGraph.Model
import org.eclipse.fx.ide.fxgraph.fXGraph.Element
import org.eclipse.fx.ide.fxgraph.fXGraph.ControllerHandledValueProperty
import org.eclipse.fx.ide.model.FXPlugin
import org.eclipse.fx.ide.model.IFXCtrlEventMethod

class ControllerTemplate {
	def static generate(Model model) '''
package «model.componentDef.controller.qualifiedName»;

import javafx.fxml.FXML;

/**
 * This class is auto generated by e(fx)clipse do not edit it
 */
public abstract class Gen«model.componentDef.controller.simpleName» {
	«FOR f : model.componentDef.eAllContents.filter(typeof(Element)).filter[e|e.name != null].toIterable»
		@FXML 
		«f.type.qualifiedName» «f.name»;
	«ENDFOR»
	
	«FOR f : model.componentDef.eAllContents.filter(typeof(ControllerHandledValueProperty)).toIterable»
		@FXML
		public abstract void «f.methodname»(«(f.eContainer as Element).getEventType(f.methodname)» event);
	«ENDFOR»
}
'''

	def static getEventType(Element owner, String methodName) {
		val p = FXPlugin::classmodel.findClass(null,null).allProperties.get(methodName) as IFXCtrlEventMethod
		return p.argumentType.typeQualifiedName
	}
}