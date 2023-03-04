/**
 * generated by Xtext 2.22.0
 */
package org.xtext.sisprog.p2.impl;

import java.util.Collection;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

import org.eclipse.emf.ecore.util.EDataTypeEList;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

import org.xtext.sisprog.p2.Aritmetico;
import org.xtext.sisprog.p2.Expressao;
import org.xtext.sisprog.p2.P2Package;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Aritmetico</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.xtext.sisprog.p2.impl.AritmeticoImpl#getOp1 <em>Op1</em>}</li>
 *   <li>{@link org.xtext.sisprog.p2.impl.AritmeticoImpl#getOpr <em>Opr</em>}</li>
 *   <li>{@link org.xtext.sisprog.p2.impl.AritmeticoImpl#getOp2 <em>Op2</em>}</li>
 * </ul>
 *
 * @generated
 */
public class AritmeticoImpl extends ExpressaoImpl implements Aritmetico
{
  /**
   * The cached value of the '{@link #getOp1() <em>Op1</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOp1()
   * @generated
   * @ordered
   */
  protected Expressao op1;

  /**
   * The cached value of the '{@link #getOpr() <em>Opr</em>}' attribute list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOpr()
   * @generated
   * @ordered
   */
  protected EList<String> opr;

  /**
   * The cached value of the '{@link #getOp2() <em>Op2</em>}' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOp2()
   * @generated
   * @ordered
   */
  protected EList<Expressao> op2;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected AritmeticoImpl()
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
    return P2Package.Literals.ARITMETICO;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Expressao getOp1()
  {
    return op1;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetOp1(Expressao newOp1, NotificationChain msgs)
  {
    Expressao oldOp1 = op1;
    op1 = newOp1;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, P2Package.ARITMETICO__OP1, oldOp1, newOp1);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void setOp1(Expressao newOp1)
  {
    if (newOp1 != op1)
    {
      NotificationChain msgs = null;
      if (op1 != null)
        msgs = ((InternalEObject)op1).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - P2Package.ARITMETICO__OP1, null, msgs);
      if (newOp1 != null)
        msgs = ((InternalEObject)newOp1).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - P2Package.ARITMETICO__OP1, null, msgs);
      msgs = basicSetOp1(newOp1, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, P2Package.ARITMETICO__OP1, newOp1, newOp1));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EList<String> getOpr()
  {
    if (opr == null)
    {
      opr = new EDataTypeEList<String>(String.class, this, P2Package.ARITMETICO__OPR);
    }
    return opr;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EList<Expressao> getOp2()
  {
    if (op2 == null)
    {
      op2 = new EObjectContainmentEList<Expressao>(Expressao.class, this, P2Package.ARITMETICO__OP2);
    }
    return op2;
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
      case P2Package.ARITMETICO__OP1:
        return basicSetOp1(null, msgs);
      case P2Package.ARITMETICO__OP2:
        return ((InternalEList<?>)getOp2()).basicRemove(otherEnd, msgs);
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
      case P2Package.ARITMETICO__OP1:
        return getOp1();
      case P2Package.ARITMETICO__OPR:
        return getOpr();
      case P2Package.ARITMETICO__OP2:
        return getOp2();
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
      case P2Package.ARITMETICO__OP1:
        setOp1((Expressao)newValue);
        return;
      case P2Package.ARITMETICO__OPR:
        getOpr().clear();
        getOpr().addAll((Collection<? extends String>)newValue);
        return;
      case P2Package.ARITMETICO__OP2:
        getOp2().clear();
        getOp2().addAll((Collection<? extends Expressao>)newValue);
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
      case P2Package.ARITMETICO__OP1:
        setOp1((Expressao)null);
        return;
      case P2Package.ARITMETICO__OPR:
        getOpr().clear();
        return;
      case P2Package.ARITMETICO__OP2:
        getOp2().clear();
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
      case P2Package.ARITMETICO__OP1:
        return op1 != null;
      case P2Package.ARITMETICO__OPR:
        return opr != null && !opr.isEmpty();
      case P2Package.ARITMETICO__OP2:
        return op2 != null && !op2.isEmpty();
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
    result.append(" (opr: ");
    result.append(opr);
    result.append(')');
    return result.toString();
  }

} //AritmeticoImpl
