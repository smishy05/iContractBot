/**
 * generated by Xtext 2.22.0
 */
package org.sctest.scdsl.sCDsl.impl;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.ecore.EClass;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

import org.sctest.scdsl.sCDsl.Condition;
import org.sctest.scdsl.sCDsl.ConditionTypes;
import org.sctest.scdsl.sCDsl.SCDslPackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Condition</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.sctest.scdsl.sCDsl.impl.ConditionImpl#getName <em>Name</em>}</li>
 *   <li>{@link org.sctest.scdsl.sCDsl.impl.ConditionImpl#getCondition <em>Condition</em>}</li>
 *   <li>{@link org.sctest.scdsl.sCDsl.impl.ConditionImpl#getConditionType <em>Condition Type</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ConditionImpl extends MinimalEObjectImpl.Container implements Condition
{
  /**
   * The default value of the '{@link #getName() <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getName()
   * @generated
   * @ordered
   */
  protected static final String NAME_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getName() <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getName()
   * @generated
   * @ordered
   */
  protected String name = NAME_EDEFAULT;

  /**
   * The default value of the '{@link #getCondition() <em>Condition</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getCondition()
   * @generated
   * @ordered
   */
  protected static final String CONDITION_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getCondition() <em>Condition</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getCondition()
   * @generated
   * @ordered
   */
  protected String condition = CONDITION_EDEFAULT;

  /**
   * The default value of the '{@link #getConditionType() <em>Condition Type</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getConditionType()
   * @generated
   * @ordered
   */
  protected static final ConditionTypes CONDITION_TYPE_EDEFAULT = ConditionTypes.PRE;

  /**
   * The cached value of the '{@link #getConditionType() <em>Condition Type</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getConditionType()
   * @generated
   * @ordered
   */
  protected ConditionTypes conditionType = CONDITION_TYPE_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ConditionImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected EClass eStaticClass()
  {
    return SCDslPackage.Literals.CONDITION;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String getName()
  {
    return name;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void setName(String newName)
  {
    String oldName = name;
    name = newName;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, SCDslPackage.CONDITION__NAME, oldName, name));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String getCondition()
  {
    return condition;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void setCondition(String newCondition)
  {
    String oldCondition = condition;
    condition = newCondition;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, SCDslPackage.CONDITION__CONDITION, oldCondition, condition));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ConditionTypes getConditionType()
  {
    return conditionType;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void setConditionType(ConditionTypes newConditionType)
  {
    ConditionTypes oldConditionType = conditionType;
    conditionType = newConditionType == null ? CONDITION_TYPE_EDEFAULT : newConditionType;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, SCDslPackage.CONDITION__CONDITION_TYPE, oldConditionType, conditionType));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object eGet(int featureID, boolean resolve, boolean coreType)
  {
    switch (featureID)
    {
      case SCDslPackage.CONDITION__NAME:
        return getName();
      case SCDslPackage.CONDITION__CONDITION:
        return getCondition();
      case SCDslPackage.CONDITION__CONDITION_TYPE:
        return getConditionType();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case SCDslPackage.CONDITION__NAME:
        setName((String)newValue);
        return;
      case SCDslPackage.CONDITION__CONDITION:
        setCondition((String)newValue);
        return;
      case SCDslPackage.CONDITION__CONDITION_TYPE:
        setConditionType((ConditionTypes)newValue);
        return;
    }
    super.eSet(featureID, newValue);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eUnset(int featureID)
  {
    switch (featureID)
    {
      case SCDslPackage.CONDITION__NAME:
        setName(NAME_EDEFAULT);
        return;
      case SCDslPackage.CONDITION__CONDITION:
        setCondition(CONDITION_EDEFAULT);
        return;
      case SCDslPackage.CONDITION__CONDITION_TYPE:
        setConditionType(CONDITION_TYPE_EDEFAULT);
        return;
    }
    super.eUnset(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public boolean eIsSet(int featureID)
  {
    switch (featureID)
    {
      case SCDslPackage.CONDITION__NAME:
        return NAME_EDEFAULT == null ? name != null : !NAME_EDEFAULT.equals(name);
      case SCDslPackage.CONDITION__CONDITION:
        return CONDITION_EDEFAULT == null ? condition != null : !CONDITION_EDEFAULT.equals(condition);
      case SCDslPackage.CONDITION__CONDITION_TYPE:
        return conditionType != CONDITION_TYPE_EDEFAULT;
    }
    return super.eIsSet(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String toString()
  {
    if (eIsProxy()) return super.toString();

    StringBuilder result = new StringBuilder(super.toString());
    result.append(" (name: ");
    result.append(name);
    result.append(", condition: ");
    result.append(condition);
    result.append(", conditionType: ");
    result.append(conditionType);
    result.append(')');
    return result.toString();
  }

} //ConditionImpl