/**
 * generated by Xtext 2.22.0
 */
package org.sctest.scdsl.sCDsl.impl;

import java.util.Collection;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

import org.sctest.scdsl.sCDsl.CompositeElement;
import org.sctest.scdsl.sCDsl.Element;
import org.sctest.scdsl.sCDsl.Parameter;
import org.sctest.scdsl.sCDsl.Relationship;
import org.sctest.scdsl.sCDsl.SCDslPackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Element</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.sctest.scdsl.sCDsl.impl.ElementImpl#getName <em>Name</em>}</li>
 *   <li>{@link org.sctest.scdsl.sCDsl.impl.ElementImpl#getList <em>List</em>}</li>
 *   <li>{@link org.sctest.scdsl.sCDsl.impl.ElementImpl#getRelationship <em>Relationship</em>}</li>
 *   <li>{@link org.sctest.scdsl.sCDsl.impl.ElementImpl#getCompositeelement <em>Compositeelement</em>}</li>
 *   <li>{@link org.sctest.scdsl.sCDsl.impl.ElementImpl#getParameters <em>Parameters</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ElementImpl extends MinimalEObjectImpl.Container implements Element
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
   * The default value of the '{@link #getList() <em>List</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getList()
   * @generated
   * @ordered
   */
  protected static final String LIST_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getList() <em>List</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getList()
   * @generated
   * @ordered
   */
  protected String list = LIST_EDEFAULT;

  /**
   * The cached value of the '{@link #getRelationship() <em>Relationship</em>}' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getRelationship()
   * @generated
   * @ordered
   */
  protected EList<Relationship> relationship;

  /**
   * The cached value of the '{@link #getCompositeelement() <em>Compositeelement</em>}' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getCompositeelement()
   * @generated
   * @ordered
   */
  protected EList<CompositeElement> compositeelement;

  /**
   * The cached value of the '{@link #getParameters() <em>Parameters</em>}' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getParameters()
   * @generated
   * @ordered
   */
  protected EList<Parameter> parameters;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ElementImpl()
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
    return SCDslPackage.Literals.ELEMENT;
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
      eNotify(new ENotificationImpl(this, Notification.SET, SCDslPackage.ELEMENT__NAME, oldName, name));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String getList()
  {
    return list;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void setList(String newList)
  {
    String oldList = list;
    list = newList;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, SCDslPackage.ELEMENT__LIST, oldList, list));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EList<Relationship> getRelationship()
  {
    if (relationship == null)
    {
      relationship = new EObjectContainmentEList<Relationship>(Relationship.class, this, SCDslPackage.ELEMENT__RELATIONSHIP);
    }
    return relationship;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EList<CompositeElement> getCompositeelement()
  {
    if (compositeelement == null)
    {
      compositeelement = new EObjectContainmentEList<CompositeElement>(CompositeElement.class, this, SCDslPackage.ELEMENT__COMPOSITEELEMENT);
    }
    return compositeelement;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EList<Parameter> getParameters()
  {
    if (parameters == null)
    {
      parameters = new EObjectContainmentEList<Parameter>(Parameter.class, this, SCDslPackage.ELEMENT__PARAMETERS);
    }
    return parameters;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs)
  {
    switch (featureID)
    {
      case SCDslPackage.ELEMENT__RELATIONSHIP:
        return ((InternalEList<?>)getRelationship()).basicRemove(otherEnd, msgs);
      case SCDslPackage.ELEMENT__COMPOSITEELEMENT:
        return ((InternalEList<?>)getCompositeelement()).basicRemove(otherEnd, msgs);
      case SCDslPackage.ELEMENT__PARAMETERS:
        return ((InternalEList<?>)getParameters()).basicRemove(otherEnd, msgs);
    }
    return super.eInverseRemove(otherEnd, featureID, msgs);
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
      case SCDslPackage.ELEMENT__NAME:
        return getName();
      case SCDslPackage.ELEMENT__LIST:
        return getList();
      case SCDslPackage.ELEMENT__RELATIONSHIP:
        return getRelationship();
      case SCDslPackage.ELEMENT__COMPOSITEELEMENT:
        return getCompositeelement();
      case SCDslPackage.ELEMENT__PARAMETERS:
        return getParameters();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @SuppressWarnings("unchecked")
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case SCDslPackage.ELEMENT__NAME:
        setName((String)newValue);
        return;
      case SCDslPackage.ELEMENT__LIST:
        setList((String)newValue);
        return;
      case SCDslPackage.ELEMENT__RELATIONSHIP:
        getRelationship().clear();
        getRelationship().addAll((Collection<? extends Relationship>)newValue);
        return;
      case SCDslPackage.ELEMENT__COMPOSITEELEMENT:
        getCompositeelement().clear();
        getCompositeelement().addAll((Collection<? extends CompositeElement>)newValue);
        return;
      case SCDslPackage.ELEMENT__PARAMETERS:
        getParameters().clear();
        getParameters().addAll((Collection<? extends Parameter>)newValue);
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
      case SCDslPackage.ELEMENT__NAME:
        setName(NAME_EDEFAULT);
        return;
      case SCDslPackage.ELEMENT__LIST:
        setList(LIST_EDEFAULT);
        return;
      case SCDslPackage.ELEMENT__RELATIONSHIP:
        getRelationship().clear();
        return;
      case SCDslPackage.ELEMENT__COMPOSITEELEMENT:
        getCompositeelement().clear();
        return;
      case SCDslPackage.ELEMENT__PARAMETERS:
        getParameters().clear();
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
      case SCDslPackage.ELEMENT__NAME:
        return NAME_EDEFAULT == null ? name != null : !NAME_EDEFAULT.equals(name);
      case SCDslPackage.ELEMENT__LIST:
        return LIST_EDEFAULT == null ? list != null : !LIST_EDEFAULT.equals(list);
      case SCDslPackage.ELEMENT__RELATIONSHIP:
        return relationship != null && !relationship.isEmpty();
      case SCDslPackage.ELEMENT__COMPOSITEELEMENT:
        return compositeelement != null && !compositeelement.isEmpty();
      case SCDslPackage.ELEMENT__PARAMETERS:
        return parameters != null && !parameters.isEmpty();
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
    result.append(", list: ");
    result.append(list);
    result.append(')');
    return result.toString();
  }

} //ElementImpl