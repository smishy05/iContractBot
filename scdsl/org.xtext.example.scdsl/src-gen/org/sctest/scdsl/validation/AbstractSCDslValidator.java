/*
 * generated by Xtext 2.22.0
 */
package org.sctest.scdsl.validation;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.validation.AbstractDeclarativeValidator;

public abstract class AbstractSCDslValidator extends AbstractDeclarativeValidator {
	
	@Override
	protected List<EPackage> getEPackages() {
		List<EPackage> result = new ArrayList<EPackage>();
		result.add(org.sctest.scdsl.sCDsl.SCDslPackage.eINSTANCE);
		return result;
	}
}
