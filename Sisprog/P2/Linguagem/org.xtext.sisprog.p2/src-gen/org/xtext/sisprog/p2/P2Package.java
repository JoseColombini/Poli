/**
 * generated by Xtext 2.22.0
 */
package org.xtext.sisprog.p2;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

/**
 * <!-- begin-user-doc -->
 * The <b>Package</b> for the model.
 * It contains accessors for the meta objects to represent
 * <ul>
 *   <li>each class,</li>
 *   <li>each feature of each class,</li>
 *   <li>each enum,</li>
 *   <li>and each data type</li>
 * </ul>
 * <!-- end-user-doc -->
 * @see org.xtext.sisprog.p2.P2Factory
 * @model kind="package"
 * @generated
 */
public interface P2Package extends EPackage
{
  /**
   * The package name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNAME = "p2";

  /**
   * The package namespace URI.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_URI = "http://www.xtext.org/sisprog/P2";

  /**
   * The package namespace name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_PREFIX = "p2";

  /**
   * The singleton instance of the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  P2Package eINSTANCE = org.xtext.sisprog.p2.impl.P2PackageImpl.init();

  /**
   * The meta object id for the '{@link org.xtext.sisprog.p2.impl.ProgramaImpl <em>Programa</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.xtext.sisprog.p2.impl.ProgramaImpl
   * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getPrograma()
   * @generated
   */
  int PROGRAMA = 0;

  /**
   * The feature id for the '<em><b>Funcoes</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PROGRAMA__FUNCOES = 0;

  /**
   * The number of structural features of the '<em>Programa</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PROGRAMA_FEATURE_COUNT = 1;

  /**
   * The meta object id for the '{@link org.xtext.sisprog.p2.impl.FuncaoImpl <em>Funcao</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.xtext.sisprog.p2.impl.FuncaoImpl
   * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getFuncao()
   * @generated
   */
  int FUNCAO = 1;

  /**
   * The feature id for the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int FUNCAO__NAME = 0;

  /**
   * The feature id for the '<em><b>Comandos</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int FUNCAO__COMANDOS = 1;

  /**
   * The number of structural features of the '<em>Funcao</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int FUNCAO_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.xtext.sisprog.p2.impl.ComandoImpl <em>Comando</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.xtext.sisprog.p2.impl.ComandoImpl
   * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getComando()
   * @generated
   */
  int COMANDO = 2;

  /**
   * The number of structural features of the '<em>Comando</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int COMANDO_FEATURE_COUNT = 0;

  /**
   * The meta object id for the '{@link org.xtext.sisprog.p2.impl.DesvioCondicionalImpl <em>Desvio Condicional</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.xtext.sisprog.p2.impl.DesvioCondicionalImpl
   * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getDesvioCondicional()
   * @generated
   */
  int DESVIO_CONDICIONAL = 3;

  /**
   * The feature id for the '<em><b>Comparacao</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DESVIO_CONDICIONAL__COMPARACAO = COMANDO_FEATURE_COUNT + 0;

  /**
   * The feature id for the '<em><b>Comandos</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DESVIO_CONDICIONAL__COMANDOS = COMANDO_FEATURE_COUNT + 1;

  /**
   * The feature id for the '<em><b>Comando</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DESVIO_CONDICIONAL__COMANDO = COMANDO_FEATURE_COUNT + 2;

  /**
   * The number of structural features of the '<em>Desvio Condicional</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DESVIO_CONDICIONAL_FEATURE_COUNT = COMANDO_FEATURE_COUNT + 3;

  /**
   * The meta object id for the '{@link org.xtext.sisprog.p2.impl.ComparacaoImpl <em>Comparacao</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.xtext.sisprog.p2.impl.ComparacaoImpl
   * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getComparacao()
   * @generated
   */
  int COMPARACAO = 4;

  /**
   * The feature id for the '<em><b>Op1</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int COMPARACAO__OP1 = 0;

  /**
   * The feature id for the '<em><b>Opr</b></em>' attribute list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int COMPARACAO__OPR = 1;

  /**
   * The feature id for the '<em><b>Op2</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int COMPARACAO__OP2 = 2;

  /**
   * The number of structural features of the '<em>Comparacao</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int COMPARACAO_FEATURE_COUNT = 3;

  /**
   * The meta object id for the '{@link org.xtext.sisprog.p2.impl.AtribuicaoImpl <em>Atribuicao</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.xtext.sisprog.p2.impl.AtribuicaoImpl
   * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getAtribuicao()
   * @generated
   */
  int ATRIBUICAO = 5;

  /**
   * The feature id for the '<em><b>Res</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ATRIBUICAO__RES = COMANDO_FEATURE_COUNT + 0;

  /**
   * The feature id for the '<em><b>At</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ATRIBUICAO__AT = COMANDO_FEATURE_COUNT + 1;

  /**
   * The number of structural features of the '<em>Atribuicao</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ATRIBUICAO_FEATURE_COUNT = COMANDO_FEATURE_COUNT + 2;

  /**
   * The meta object id for the '{@link org.xtext.sisprog.p2.impl.ExpressaoImpl <em>Expressao</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.xtext.sisprog.p2.impl.ExpressaoImpl
   * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getExpressao()
   * @generated
   */
  int EXPRESSAO = 7;

  /**
   * The number of structural features of the '<em>Expressao</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EXPRESSAO_FEATURE_COUNT = 0;

  /**
   * The meta object id for the '{@link org.xtext.sisprog.p2.impl.AritmeticoImpl <em>Aritmetico</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.xtext.sisprog.p2.impl.AritmeticoImpl
   * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getAritmetico()
   * @generated
   */
  int ARITMETICO = 6;

  /**
   * The feature id for the '<em><b>Op1</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITMETICO__OP1 = EXPRESSAO_FEATURE_COUNT + 0;

  /**
   * The feature id for the '<em><b>Opr</b></em>' attribute list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITMETICO__OPR = EXPRESSAO_FEATURE_COUNT + 1;

  /**
   * The feature id for the '<em><b>Op2</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITMETICO__OP2 = EXPRESSAO_FEATURE_COUNT + 2;

  /**
   * The number of structural features of the '<em>Aritmetico</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITMETICO_FEATURE_COUNT = EXPRESSAO_FEATURE_COUNT + 3;

  /**
   * The meta object id for the '{@link org.xtext.sisprog.p2.impl.DesvioImpl <em>Desvio</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.xtext.sisprog.p2.impl.DesvioImpl
   * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getDesvio()
   * @generated
   */
  int DESVIO = 8;

  /**
   * The feature id for the '<em><b>Rotina</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DESVIO__ROTINA = COMANDO_FEATURE_COUNT + 0;

  /**
   * The number of structural features of the '<em>Desvio</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DESVIO_FEATURE_COUNT = COMANDO_FEATURE_COUNT + 1;

  /**
   * The meta object id for the '{@link org.xtext.sisprog.p2.impl.ValueImpl <em>Value</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.xtext.sisprog.p2.impl.ValueImpl
   * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getValue()
   * @generated
   */
  int VALUE = 9;

  /**
   * The number of structural features of the '<em>Value</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int VALUE_FEATURE_COUNT = EXPRESSAO_FEATURE_COUNT + 0;

  /**
   * The meta object id for the '{@link org.xtext.sisprog.p2.impl.variavelImpl <em>variavel</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.xtext.sisprog.p2.impl.variavelImpl
   * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getvariavel()
   * @generated
   */
  int VARIAVEL = 10;

  /**
   * The feature id for the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int VARIAVEL__NAME = VALUE_FEATURE_COUNT + 0;

  /**
   * The number of structural features of the '<em>variavel</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int VARIAVEL_FEATURE_COUNT = VALUE_FEATURE_COUNT + 1;


  /**
   * Returns the meta object for class '{@link org.xtext.sisprog.p2.Programa <em>Programa</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Programa</em>'.
   * @see org.xtext.sisprog.p2.Programa
   * @generated
   */
  EClass getPrograma();

  /**
   * Returns the meta object for the containment reference list '{@link org.xtext.sisprog.p2.Programa#getFuncoes <em>Funcoes</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Funcoes</em>'.
   * @see org.xtext.sisprog.p2.Programa#getFuncoes()
   * @see #getPrograma()
   * @generated
   */
  EReference getPrograma_Funcoes();

  /**
   * Returns the meta object for class '{@link org.xtext.sisprog.p2.Funcao <em>Funcao</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Funcao</em>'.
   * @see org.xtext.sisprog.p2.Funcao
   * @generated
   */
  EClass getFuncao();

  /**
   * Returns the meta object for the attribute '{@link org.xtext.sisprog.p2.Funcao#getName <em>Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Name</em>'.
   * @see org.xtext.sisprog.p2.Funcao#getName()
   * @see #getFuncao()
   * @generated
   */
  EAttribute getFuncao_Name();

  /**
   * Returns the meta object for the containment reference list '{@link org.xtext.sisprog.p2.Funcao#getComandos <em>Comandos</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Comandos</em>'.
   * @see org.xtext.sisprog.p2.Funcao#getComandos()
   * @see #getFuncao()
   * @generated
   */
  EReference getFuncao_Comandos();

  /**
   * Returns the meta object for class '{@link org.xtext.sisprog.p2.Comando <em>Comando</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Comando</em>'.
   * @see org.xtext.sisprog.p2.Comando
   * @generated
   */
  EClass getComando();

  /**
   * Returns the meta object for class '{@link org.xtext.sisprog.p2.DesvioCondicional <em>Desvio Condicional</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Desvio Condicional</em>'.
   * @see org.xtext.sisprog.p2.DesvioCondicional
   * @generated
   */
  EClass getDesvioCondicional();

  /**
   * Returns the meta object for the containment reference list '{@link org.xtext.sisprog.p2.DesvioCondicional#getComparacao <em>Comparacao</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Comparacao</em>'.
   * @see org.xtext.sisprog.p2.DesvioCondicional#getComparacao()
   * @see #getDesvioCondicional()
   * @generated
   */
  EReference getDesvioCondicional_Comparacao();

  /**
   * Returns the meta object for the containment reference list '{@link org.xtext.sisprog.p2.DesvioCondicional#getComandos <em>Comandos</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Comandos</em>'.
   * @see org.xtext.sisprog.p2.DesvioCondicional#getComandos()
   * @see #getDesvioCondicional()
   * @generated
   */
  EReference getDesvioCondicional_Comandos();

  /**
   * Returns the meta object for the containment reference list '{@link org.xtext.sisprog.p2.DesvioCondicional#getComando <em>Comando</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Comando</em>'.
   * @see org.xtext.sisprog.p2.DesvioCondicional#getComando()
   * @see #getDesvioCondicional()
   * @generated
   */
  EReference getDesvioCondicional_Comando();

  /**
   * Returns the meta object for class '{@link org.xtext.sisprog.p2.Comparacao <em>Comparacao</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Comparacao</em>'.
   * @see org.xtext.sisprog.p2.Comparacao
   * @generated
   */
  EClass getComparacao();

  /**
   * Returns the meta object for the containment reference '{@link org.xtext.sisprog.p2.Comparacao#getOp1 <em>Op1</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Op1</em>'.
   * @see org.xtext.sisprog.p2.Comparacao#getOp1()
   * @see #getComparacao()
   * @generated
   */
  EReference getComparacao_Op1();

  /**
   * Returns the meta object for the attribute list '{@link org.xtext.sisprog.p2.Comparacao#getOpr <em>Opr</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute list '<em>Opr</em>'.
   * @see org.xtext.sisprog.p2.Comparacao#getOpr()
   * @see #getComparacao()
   * @generated
   */
  EAttribute getComparacao_Opr();

  /**
   * Returns the meta object for the containment reference '{@link org.xtext.sisprog.p2.Comparacao#getOp2 <em>Op2</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Op2</em>'.
   * @see org.xtext.sisprog.p2.Comparacao#getOp2()
   * @see #getComparacao()
   * @generated
   */
  EReference getComparacao_Op2();

  /**
   * Returns the meta object for class '{@link org.xtext.sisprog.p2.Atribuicao <em>Atribuicao</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Atribuicao</em>'.
   * @see org.xtext.sisprog.p2.Atribuicao
   * @generated
   */
  EClass getAtribuicao();

  /**
   * Returns the meta object for the containment reference '{@link org.xtext.sisprog.p2.Atribuicao#getRes <em>Res</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Res</em>'.
   * @see org.xtext.sisprog.p2.Atribuicao#getRes()
   * @see #getAtribuicao()
   * @generated
   */
  EReference getAtribuicao_Res();

  /**
   * Returns the meta object for the containment reference '{@link org.xtext.sisprog.p2.Atribuicao#getAt <em>At</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>At</em>'.
   * @see org.xtext.sisprog.p2.Atribuicao#getAt()
   * @see #getAtribuicao()
   * @generated
   */
  EReference getAtribuicao_At();

  /**
   * Returns the meta object for class '{@link org.xtext.sisprog.p2.Aritmetico <em>Aritmetico</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Aritmetico</em>'.
   * @see org.xtext.sisprog.p2.Aritmetico
   * @generated
   */
  EClass getAritmetico();

  /**
   * Returns the meta object for the containment reference '{@link org.xtext.sisprog.p2.Aritmetico#getOp1 <em>Op1</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Op1</em>'.
   * @see org.xtext.sisprog.p2.Aritmetico#getOp1()
   * @see #getAritmetico()
   * @generated
   */
  EReference getAritmetico_Op1();

  /**
   * Returns the meta object for the attribute list '{@link org.xtext.sisprog.p2.Aritmetico#getOpr <em>Opr</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute list '<em>Opr</em>'.
   * @see org.xtext.sisprog.p2.Aritmetico#getOpr()
   * @see #getAritmetico()
   * @generated
   */
  EAttribute getAritmetico_Opr();

  /**
   * Returns the meta object for the containment reference list '{@link org.xtext.sisprog.p2.Aritmetico#getOp2 <em>Op2</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Op2</em>'.
   * @see org.xtext.sisprog.p2.Aritmetico#getOp2()
   * @see #getAritmetico()
   * @generated
   */
  EReference getAritmetico_Op2();

  /**
   * Returns the meta object for class '{@link org.xtext.sisprog.p2.Expressao <em>Expressao</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Expressao</em>'.
   * @see org.xtext.sisprog.p2.Expressao
   * @generated
   */
  EClass getExpressao();

  /**
   * Returns the meta object for class '{@link org.xtext.sisprog.p2.Desvio <em>Desvio</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Desvio</em>'.
   * @see org.xtext.sisprog.p2.Desvio
   * @generated
   */
  EClass getDesvio();

  /**
   * Returns the meta object for the reference '{@link org.xtext.sisprog.p2.Desvio#getRotina <em>Rotina</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>Rotina</em>'.
   * @see org.xtext.sisprog.p2.Desvio#getRotina()
   * @see #getDesvio()
   * @generated
   */
  EReference getDesvio_Rotina();

  /**
   * Returns the meta object for class '{@link org.xtext.sisprog.p2.Value <em>Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Value</em>'.
   * @see org.xtext.sisprog.p2.Value
   * @generated
   */
  EClass getValue();

  /**
   * Returns the meta object for class '{@link org.xtext.sisprog.p2.variavel <em>variavel</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>variavel</em>'.
   * @see org.xtext.sisprog.p2.variavel
   * @generated
   */
  EClass getvariavel();

  /**
   * Returns the meta object for the attribute '{@link org.xtext.sisprog.p2.variavel#getName <em>Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Name</em>'.
   * @see org.xtext.sisprog.p2.variavel#getName()
   * @see #getvariavel()
   * @generated
   */
  EAttribute getvariavel_Name();

  /**
   * Returns the factory that creates the instances of the model.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the factory that creates the instances of the model.
   * @generated
   */
  P2Factory getP2Factory();

  /**
   * <!-- begin-user-doc -->
   * Defines literals for the meta objects that represent
   * <ul>
   *   <li>each class,</li>
   *   <li>each feature of each class,</li>
   *   <li>each enum,</li>
   *   <li>and each data type</li>
   * </ul>
   * <!-- end-user-doc -->
   * @generated
   */
  interface Literals
  {
    /**
     * The meta object literal for the '{@link org.xtext.sisprog.p2.impl.ProgramaImpl <em>Programa</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.xtext.sisprog.p2.impl.ProgramaImpl
     * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getPrograma()
     * @generated
     */
    EClass PROGRAMA = eINSTANCE.getPrograma();

    /**
     * The meta object literal for the '<em><b>Funcoes</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference PROGRAMA__FUNCOES = eINSTANCE.getPrograma_Funcoes();

    /**
     * The meta object literal for the '{@link org.xtext.sisprog.p2.impl.FuncaoImpl <em>Funcao</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.xtext.sisprog.p2.impl.FuncaoImpl
     * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getFuncao()
     * @generated
     */
    EClass FUNCAO = eINSTANCE.getFuncao();

    /**
     * The meta object literal for the '<em><b>Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute FUNCAO__NAME = eINSTANCE.getFuncao_Name();

    /**
     * The meta object literal for the '<em><b>Comandos</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference FUNCAO__COMANDOS = eINSTANCE.getFuncao_Comandos();

    /**
     * The meta object literal for the '{@link org.xtext.sisprog.p2.impl.ComandoImpl <em>Comando</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.xtext.sisprog.p2.impl.ComandoImpl
     * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getComando()
     * @generated
     */
    EClass COMANDO = eINSTANCE.getComando();

    /**
     * The meta object literal for the '{@link org.xtext.sisprog.p2.impl.DesvioCondicionalImpl <em>Desvio Condicional</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.xtext.sisprog.p2.impl.DesvioCondicionalImpl
     * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getDesvioCondicional()
     * @generated
     */
    EClass DESVIO_CONDICIONAL = eINSTANCE.getDesvioCondicional();

    /**
     * The meta object literal for the '<em><b>Comparacao</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference DESVIO_CONDICIONAL__COMPARACAO = eINSTANCE.getDesvioCondicional_Comparacao();

    /**
     * The meta object literal for the '<em><b>Comandos</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference DESVIO_CONDICIONAL__COMANDOS = eINSTANCE.getDesvioCondicional_Comandos();

    /**
     * The meta object literal for the '<em><b>Comando</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference DESVIO_CONDICIONAL__COMANDO = eINSTANCE.getDesvioCondicional_Comando();

    /**
     * The meta object literal for the '{@link org.xtext.sisprog.p2.impl.ComparacaoImpl <em>Comparacao</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.xtext.sisprog.p2.impl.ComparacaoImpl
     * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getComparacao()
     * @generated
     */
    EClass COMPARACAO = eINSTANCE.getComparacao();

    /**
     * The meta object literal for the '<em><b>Op1</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference COMPARACAO__OP1 = eINSTANCE.getComparacao_Op1();

    /**
     * The meta object literal for the '<em><b>Opr</b></em>' attribute list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute COMPARACAO__OPR = eINSTANCE.getComparacao_Opr();

    /**
     * The meta object literal for the '<em><b>Op2</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference COMPARACAO__OP2 = eINSTANCE.getComparacao_Op2();

    /**
     * The meta object literal for the '{@link org.xtext.sisprog.p2.impl.AtribuicaoImpl <em>Atribuicao</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.xtext.sisprog.p2.impl.AtribuicaoImpl
     * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getAtribuicao()
     * @generated
     */
    EClass ATRIBUICAO = eINSTANCE.getAtribuicao();

    /**
     * The meta object literal for the '<em><b>Res</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ATRIBUICAO__RES = eINSTANCE.getAtribuicao_Res();

    /**
     * The meta object literal for the '<em><b>At</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ATRIBUICAO__AT = eINSTANCE.getAtribuicao_At();

    /**
     * The meta object literal for the '{@link org.xtext.sisprog.p2.impl.AritmeticoImpl <em>Aritmetico</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.xtext.sisprog.p2.impl.AritmeticoImpl
     * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getAritmetico()
     * @generated
     */
    EClass ARITMETICO = eINSTANCE.getAritmetico();

    /**
     * The meta object literal for the '<em><b>Op1</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ARITMETICO__OP1 = eINSTANCE.getAritmetico_Op1();

    /**
     * The meta object literal for the '<em><b>Opr</b></em>' attribute list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ARITMETICO__OPR = eINSTANCE.getAritmetico_Opr();

    /**
     * The meta object literal for the '<em><b>Op2</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ARITMETICO__OP2 = eINSTANCE.getAritmetico_Op2();

    /**
     * The meta object literal for the '{@link org.xtext.sisprog.p2.impl.ExpressaoImpl <em>Expressao</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.xtext.sisprog.p2.impl.ExpressaoImpl
     * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getExpressao()
     * @generated
     */
    EClass EXPRESSAO = eINSTANCE.getExpressao();

    /**
     * The meta object literal for the '{@link org.xtext.sisprog.p2.impl.DesvioImpl <em>Desvio</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.xtext.sisprog.p2.impl.DesvioImpl
     * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getDesvio()
     * @generated
     */
    EClass DESVIO = eINSTANCE.getDesvio();

    /**
     * The meta object literal for the '<em><b>Rotina</b></em>' reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference DESVIO__ROTINA = eINSTANCE.getDesvio_Rotina();

    /**
     * The meta object literal for the '{@link org.xtext.sisprog.p2.impl.ValueImpl <em>Value</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.xtext.sisprog.p2.impl.ValueImpl
     * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getValue()
     * @generated
     */
    EClass VALUE = eINSTANCE.getValue();

    /**
     * The meta object literal for the '{@link org.xtext.sisprog.p2.impl.variavelImpl <em>variavel</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.xtext.sisprog.p2.impl.variavelImpl
     * @see org.xtext.sisprog.p2.impl.P2PackageImpl#getvariavel()
     * @generated
     */
    EClass VARIAVEL = eINSTANCE.getvariavel();

    /**
     * The meta object literal for the '<em><b>Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute VARIAVEL__NAME = eINSTANCE.getvariavel_Name();

  }

} //P2Package