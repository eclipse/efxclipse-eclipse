/*
 * generated by Xtext
 */
package org.eclipse.fx.ide.gmodel.ui;

import org.eclipse.xtext.ui.guice.AbstractGuiceAwareExecutableExtensionFactory;
import org.osgi.framework.Bundle;

import com.google.inject.Injector;

import org.eclipse.fx.ide.gmodel.ui.internal.GModelDSLActivator;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class GModelDSLExecutableExtensionFactory extends AbstractGuiceAwareExecutableExtensionFactory {

	@Override
	protected Bundle getBundle() {
		return GModelDSLActivator.getInstance().getBundle();
	}
	
	@Override
	protected Injector getInjector() {
		return GModelDSLActivator.getInstance().getInjector(GModelDSLActivator.ORG_ECLIPSE_FX_IDE_GMODEL_GMODELDSL);
	}
	
}
