/*
* generated by Xtext
*/
package org.eclipse.fx.ide.l10n;

import org.eclipse.xtext.junit4.IInjectorProvider;

import com.google.inject.Injector;

public class NLSDslUiInjectorProvider implements IInjectorProvider {
	
	public Injector getInjector() {
		return org.eclipse.fx.ide.l10n.ui.internal.NLSDslActivator.getInstance().getInjector("org.eclipse.fx.ide.l10n.NLSDsl");
	}
	
}