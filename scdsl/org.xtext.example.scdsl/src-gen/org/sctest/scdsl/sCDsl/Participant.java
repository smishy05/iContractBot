/**
 * generated by Xtext 2.22.0
 */
package org.sctest.scdsl.sCDsl;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Participant</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.sctest.scdsl.sCDsl.Participant#isCreator <em>Creator</em>}</li>
 * </ul>
 *
 * @see org.sctest.scdsl.sCDsl.SCDslPackage#getParticipant()
 * @model
 * @generated
 */
public interface Participant extends Element
{
  /**
   * Returns the value of the '<em><b>Creator</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Creator</em>' attribute.
   * @see #setCreator(boolean)
   * @see org.sctest.scdsl.sCDsl.SCDslPackage#getParticipant_Creator()
   * @model
   * @generated
   */
  boolean isCreator();

  /**
   * Sets the value of the '{@link org.sctest.scdsl.sCDsl.Participant#isCreator <em>Creator</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Creator</em>' attribute.
   * @see #isCreator()
   * @generated
   */
  void setCreator(boolean value);

} // Participant
