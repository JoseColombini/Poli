/**
 * generated by Xtext 2.22.0
 */
package org.xtext.sisprog.p2;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Desvio</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.xtext.sisprog.p2.Desvio#getRotina <em>Rotina</em>}</li>
 * </ul>
 *
 * @see org.xtext.sisprog.p2.P2Package#getDesvio()
 * @model
 * @generated
 */
public interface Desvio extends Comando
{
  /**
   * Returns the value of the '<em><b>Rotina</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Rotina</em>' reference.
   * @see #setRotina(Funcao)
   * @see org.xtext.sisprog.p2.P2Package#getDesvio_Rotina()
   * @model
   * @generated
   */
  Funcao getRotina();

  /**
   * Sets the value of the '{@link org.xtext.sisprog.p2.Desvio#getRotina <em>Rotina</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Rotina</em>' reference.
   * @see #getRotina()
   * @generated
   */
  void setRotina(Funcao value);

} // Desvio
