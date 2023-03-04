/*
 * generated by Xtext 2.22.0
 */
grammar InternalP2;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.xtext.sisprog.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.xtext.sisprog.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.xtext.sisprog.services.P2GrammarAccess;

}
@parser::members {
	private P2GrammarAccess grammarAccess;

	public void setGrammarAccess(P2GrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRulePrograma
entryRulePrograma
:
{ before(grammarAccess.getProgramaRule()); }
	 rulePrograma
{ after(grammarAccess.getProgramaRule()); } 
	 EOF 
;

// Rule Programa
rulePrograma 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getProgramaAccess().getGroup()); }
		(rule__Programa__Group__0)
		{ after(grammarAccess.getProgramaAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFuncao
entryRuleFuncao
:
{ before(grammarAccess.getFuncaoRule()); }
	 ruleFuncao
{ after(grammarAccess.getFuncaoRule()); } 
	 EOF 
;

// Rule Funcao
ruleFuncao 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFuncaoAccess().getGroup()); }
		(rule__Funcao__Group__0)
		{ after(grammarAccess.getFuncaoAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleComando
entryRuleComando
:
{ before(grammarAccess.getComandoRule()); }
	 ruleComando
{ after(grammarAccess.getComandoRule()); } 
	 EOF 
;

// Rule Comando
ruleComando 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getComandoAccess().getGroup()); }
		(rule__Comando__Group__0)
		{ after(grammarAccess.getComandoAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDesvioCondicional
entryRuleDesvioCondicional
:
{ before(grammarAccess.getDesvioCondicionalRule()); }
	 ruleDesvioCondicional
{ after(grammarAccess.getDesvioCondicionalRule()); } 
	 EOF 
;

// Rule DesvioCondicional
ruleDesvioCondicional 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDesvioCondicionalAccess().getGroup()); }
		(rule__DesvioCondicional__Group__0)
		{ after(grammarAccess.getDesvioCondicionalAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleComparacao
entryRuleComparacao
:
{ before(grammarAccess.getComparacaoRule()); }
	 ruleComparacao
{ after(grammarAccess.getComparacaoRule()); } 
	 EOF 
;

// Rule Comparacao
ruleComparacao 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getComparacaoAccess().getGroup()); }
		(rule__Comparacao__Group__0)
		{ after(grammarAccess.getComparacaoAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAtribuicao
entryRuleAtribuicao
:
{ before(grammarAccess.getAtribuicaoRule()); }
	 ruleAtribuicao
{ after(grammarAccess.getAtribuicaoRule()); } 
	 EOF 
;

// Rule Atribuicao
ruleAtribuicao 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAtribuicaoAccess().getGroup()); }
		(rule__Atribuicao__Group__0)
		{ after(grammarAccess.getAtribuicaoAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAritmetico
entryRuleAritmetico
:
{ before(grammarAccess.getAritmeticoRule()); }
	 ruleAritmetico
{ after(grammarAccess.getAritmeticoRule()); } 
	 EOF 
;

// Rule Aritmetico
ruleAritmetico 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAritmeticoAccess().getGroup()); }
		(rule__Aritmetico__Group__0)
		{ after(grammarAccess.getAritmeticoAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleExpressao
entryRuleExpressao
:
{ before(grammarAccess.getExpressaoRule()); }
	 ruleExpressao
{ after(grammarAccess.getExpressaoRule()); } 
	 EOF 
;

// Rule Expressao
ruleExpressao 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getExpressaoAccess().getAlternatives()); }
		(rule__Expressao__Alternatives)
		{ after(grammarAccess.getExpressaoAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDesvio
entryRuleDesvio
:
{ before(grammarAccess.getDesvioRule()); }
	 ruleDesvio
{ after(grammarAccess.getDesvioRule()); } 
	 EOF 
;

// Rule Desvio
ruleDesvio 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDesvioAccess().getGroup()); }
		(rule__Desvio__Group__0)
		{ after(grammarAccess.getDesvioAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleValue
entryRuleValue
:
{ before(grammarAccess.getValueRule()); }
	 ruleValue
{ after(grammarAccess.getValueRule()); } 
	 EOF 
;

// Rule Value
ruleValue 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getValueAccess().getAlternatives()); }
		(rule__Value__Alternatives)
		{ after(grammarAccess.getValueAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulevariavel
entryRulevariavel
:
{ before(grammarAccess.getVariavelRule()); }
	 rulevariavel
{ after(grammarAccess.getVariavelRule()); } 
	 EOF 
;

// Rule variavel
rulevariavel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVariavelAccess().getNameAssignment()); }
		(rule__Variavel__NameAssignment)
		{ after(grammarAccess.getVariavelAccess().getNameAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRotulo
entryRuleRotulo
:
{ before(grammarAccess.getRotuloRule()); }
	 ruleRotulo
{ after(grammarAccess.getRotuloRule()); } 
	 EOF 
;

// Rule Rotulo
ruleRotulo 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRotuloAccess().getIDTerminalRuleCall()); }
		RULE_ID
		{ after(grammarAccess.getRotuloAccess().getIDTerminalRuleCall()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleOperacao
entryRuleOperacao
:
{ before(grammarAccess.getOperacaoRule()); }
	 ruleOperacao
{ after(grammarAccess.getOperacaoRule()); } 
	 EOF 
;

// Rule Operacao
ruleOperacao 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getOperacaoAccess().getAlternatives()); }
		(rule__Operacao__Alternatives)
		{ after(grammarAccess.getOperacaoAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulecomparador
entryRulecomparador
:
{ before(grammarAccess.getComparadorRule()); }
	 rulecomparador
{ after(grammarAccess.getComparadorRule()); } 
	 EOF 
;

// Rule comparador
rulecomparador 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getComparadorAccess().getAlternatives()); }
		(rule__Comparador__Alternatives)
		{ after(grammarAccess.getComparadorAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Comando__Alternatives_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComandoAccess().getAtribuicaoParserRuleCall_0_0()); }
		ruleAtribuicao
		{ after(grammarAccess.getComandoAccess().getAtribuicaoParserRuleCall_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getComandoAccess().getDesvioParserRuleCall_0_1()); }
		ruleDesvio
		{ after(grammarAccess.getComandoAccess().getDesvioParserRuleCall_0_1()); }
	)
	|
	(
		{ before(grammarAccess.getComandoAccess().getDesvioCondicionalParserRuleCall_0_2()); }
		ruleDesvioCondicional
		{ after(grammarAccess.getComandoAccess().getDesvioCondicionalParserRuleCall_0_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Expressao__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExpressaoAccess().getGroup_0()); }
		(rule__Expressao__Group_0__0)
		{ after(grammarAccess.getExpressaoAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getExpressaoAccess().getValueParserRuleCall_1()); }
		ruleValue
		{ after(grammarAccess.getExpressaoAccess().getValueParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Value__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getValueAccess().getVariavelParserRuleCall_0()); }
		rulevariavel
		{ after(grammarAccess.getValueAccess().getVariavelParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getValueAccess().getGroup_1()); }
		(rule__Value__Group_1__0)
		{ after(grammarAccess.getValueAccess().getGroup_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operacao__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperacaoAccess().getPlusSignKeyword_0()); }
		'+'
		{ after(grammarAccess.getOperacaoAccess().getPlusSignKeyword_0()); }
	)
	|
	(
		{ before(grammarAccess.getOperacaoAccess().getHyphenMinusKeyword_1()); }
		'-'
		{ after(grammarAccess.getOperacaoAccess().getHyphenMinusKeyword_1()); }
	)
	|
	(
		{ before(grammarAccess.getOperacaoAccess().getAsteriskKeyword_2()); }
		'*'
		{ after(grammarAccess.getOperacaoAccess().getAsteriskKeyword_2()); }
	)
	|
	(
		{ before(grammarAccess.getOperacaoAccess().getSolidusKeyword_3()); }
		'/'
		{ after(grammarAccess.getOperacaoAccess().getSolidusKeyword_3()); }
	)
	|
	(
		{ before(grammarAccess.getOperacaoAccess().getAsteriskAsteriskKeyword_4()); }
		'**'
		{ after(grammarAccess.getOperacaoAccess().getAsteriskAsteriskKeyword_4()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Comparador__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComparadorAccess().getEqualsSignEqualsSignKeyword_0()); }
		'=='
		{ after(grammarAccess.getComparadorAccess().getEqualsSignEqualsSignKeyword_0()); }
	)
	|
	(
		{ before(grammarAccess.getComparadorAccess().getExclamationMarkEqualsSignKeyword_1()); }
		'!='
		{ after(grammarAccess.getComparadorAccess().getExclamationMarkEqualsSignKeyword_1()); }
	)
	|
	(
		{ before(grammarAccess.getComparadorAccess().getLessThanSignKeyword_2()); }
		'<'
		{ after(grammarAccess.getComparadorAccess().getLessThanSignKeyword_2()); }
	)
	|
	(
		{ before(grammarAccess.getComparadorAccess().getGreaterThanSignKeyword_3()); }
		'>'
		{ after(grammarAccess.getComparadorAccess().getGreaterThanSignKeyword_3()); }
	)
	|
	(
		{ before(grammarAccess.getComparadorAccess().getLessThanSignEqualsSignKeyword_4()); }
		'<='
		{ after(grammarAccess.getComparadorAccess().getLessThanSignEqualsSignKeyword_4()); }
	)
	|
	(
		{ before(grammarAccess.getComparadorAccess().getGreaterThanSignEqualsSignKeyword_5()); }
		'>='
		{ after(grammarAccess.getComparadorAccess().getGreaterThanSignEqualsSignKeyword_5()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Programa__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Programa__Group__0__Impl
	rule__Programa__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Programa__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getProgramaAccess().getFuncoesAssignment_0()); }
		(rule__Programa__FuncoesAssignment_0)
		{ after(grammarAccess.getProgramaAccess().getFuncoesAssignment_0()); }
	)
	(
		{ before(grammarAccess.getProgramaAccess().getFuncoesAssignment_0()); }
		(rule__Programa__FuncoesAssignment_0)*
		{ after(grammarAccess.getProgramaAccess().getFuncoesAssignment_0()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Programa__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Programa__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Programa__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getProgramaAccess().getENDKeyword_1()); }
	'END'
	{ after(grammarAccess.getProgramaAccess().getENDKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Funcao__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Funcao__Group__0__Impl
	rule__Funcao__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Funcao__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFuncaoAccess().getNameAssignment_0()); }
	(rule__Funcao__NameAssignment_0)
	{ after(grammarAccess.getFuncaoAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Funcao__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Funcao__Group__1__Impl
	rule__Funcao__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Funcao__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFuncaoAccess().getColonKeyword_1()); }
	':'
	{ after(grammarAccess.getFuncaoAccess().getColonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Funcao__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Funcao__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Funcao__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getFuncaoAccess().getComandosAssignment_2()); }
		(rule__Funcao__ComandosAssignment_2)
		{ after(grammarAccess.getFuncaoAccess().getComandosAssignment_2()); }
	)
	(
		{ before(grammarAccess.getFuncaoAccess().getComandosAssignment_2()); }
		(rule__Funcao__ComandosAssignment_2)*
		{ after(grammarAccess.getFuncaoAccess().getComandosAssignment_2()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Comando__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Comando__Group__0__Impl
	rule__Comando__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Comando__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComandoAccess().getAlternatives_0()); }
	(rule__Comando__Alternatives_0)
	{ after(grammarAccess.getComandoAccess().getAlternatives_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Comando__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Comando__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Comando__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComandoAccess().getSemicolonKeyword_1()); }
	';'
	{ after(grammarAccess.getComandoAccess().getSemicolonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__DesvioCondicional__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DesvioCondicional__Group__0__Impl
	rule__DesvioCondicional__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDesvioCondicionalAccess().getIfKeyword_0()); }
	'if'
	{ after(grammarAccess.getDesvioCondicionalAccess().getIfKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DesvioCondicional__Group__1__Impl
	rule__DesvioCondicional__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDesvioCondicionalAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getDesvioCondicionalAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DesvioCondicional__Group__2__Impl
	rule__DesvioCondicional__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getDesvioCondicionalAccess().getComparacaoAssignment_2()); }
		(rule__DesvioCondicional__ComparacaoAssignment_2)
		{ after(grammarAccess.getDesvioCondicionalAccess().getComparacaoAssignment_2()); }
	)
	(
		{ before(grammarAccess.getDesvioCondicionalAccess().getComparacaoAssignment_2()); }
		(rule__DesvioCondicional__ComparacaoAssignment_2)*
		{ after(grammarAccess.getDesvioCondicionalAccess().getComparacaoAssignment_2()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DesvioCondicional__Group__3__Impl
	rule__DesvioCondicional__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDesvioCondicionalAccess().getRightParenthesisKeyword_3()); }
	')'
	{ after(grammarAccess.getDesvioCondicionalAccess().getRightParenthesisKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DesvioCondicional__Group__4__Impl
	rule__DesvioCondicional__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDesvioCondicionalAccess().getLeftCurlyBracketKeyword_4()); }
	'{'
	{ after(grammarAccess.getDesvioCondicionalAccess().getLeftCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DesvioCondicional__Group__5__Impl
	rule__DesvioCondicional__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getDesvioCondicionalAccess().getComandosAssignment_5()); }
		(rule__DesvioCondicional__ComandosAssignment_5)
		{ after(grammarAccess.getDesvioCondicionalAccess().getComandosAssignment_5()); }
	)
	(
		{ before(grammarAccess.getDesvioCondicionalAccess().getComandosAssignment_5()); }
		(rule__DesvioCondicional__ComandosAssignment_5)*
		{ after(grammarAccess.getDesvioCondicionalAccess().getComandosAssignment_5()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DesvioCondicional__Group__6__Impl
	rule__DesvioCondicional__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDesvioCondicionalAccess().getRightCurlyBracketKeyword_6()); }
	'}'
	{ after(grammarAccess.getDesvioCondicionalAccess().getRightCurlyBracketKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DesvioCondicional__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDesvioCondicionalAccess().getGroup_7()); }
	(rule__DesvioCondicional__Group_7__0)?
	{ after(grammarAccess.getDesvioCondicionalAccess().getGroup_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__DesvioCondicional__Group_7__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DesvioCondicional__Group_7__0__Impl
	rule__DesvioCondicional__Group_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group_7__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDesvioCondicionalAccess().getElseKeyword_7_0()); }
	'else'
	{ after(grammarAccess.getDesvioCondicionalAccess().getElseKeyword_7_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group_7__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DesvioCondicional__Group_7__1__Impl
	rule__DesvioCondicional__Group_7__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group_7__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDesvioCondicionalAccess().getLeftCurlyBracketKeyword_7_1()); }
	'{'
	{ after(grammarAccess.getDesvioCondicionalAccess().getLeftCurlyBracketKeyword_7_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group_7__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DesvioCondicional__Group_7__2__Impl
	rule__DesvioCondicional__Group_7__3
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group_7__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getDesvioCondicionalAccess().getComandoAssignment_7_2()); }
		(rule__DesvioCondicional__ComandoAssignment_7_2)
		{ after(grammarAccess.getDesvioCondicionalAccess().getComandoAssignment_7_2()); }
	)
	(
		{ before(grammarAccess.getDesvioCondicionalAccess().getComandoAssignment_7_2()); }
		(rule__DesvioCondicional__ComandoAssignment_7_2)*
		{ after(grammarAccess.getDesvioCondicionalAccess().getComandoAssignment_7_2()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group_7__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DesvioCondicional__Group_7__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__Group_7__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDesvioCondicionalAccess().getRightCurlyBracketKeyword_7_3()); }
	'}'
	{ after(grammarAccess.getDesvioCondicionalAccess().getRightCurlyBracketKeyword_7_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Comparacao__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Comparacao__Group__0__Impl
	rule__Comparacao__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Comparacao__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComparacaoAccess().getOp1Assignment_0()); }
	(rule__Comparacao__Op1Assignment_0)
	{ after(grammarAccess.getComparacaoAccess().getOp1Assignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Comparacao__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Comparacao__Group__1__Impl
	rule__Comparacao__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Comparacao__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComparacaoAccess().getOprAssignment_1()); }
	(rule__Comparacao__OprAssignment_1)
	{ after(grammarAccess.getComparacaoAccess().getOprAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Comparacao__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Comparacao__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Comparacao__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getComparacaoAccess().getOp2Assignment_2()); }
	(rule__Comparacao__Op2Assignment_2)
	{ after(grammarAccess.getComparacaoAccess().getOp2Assignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Atribuicao__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Atribuicao__Group__0__Impl
	rule__Atribuicao__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Atribuicao__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAtribuicaoAccess().getResAssignment_0()); }
	(rule__Atribuicao__ResAssignment_0)
	{ after(grammarAccess.getAtribuicaoAccess().getResAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Atribuicao__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Atribuicao__Group__1__Impl
	rule__Atribuicao__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Atribuicao__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAtribuicaoAccess().getEqualsSignKeyword_1()); }
	'='
	{ after(grammarAccess.getAtribuicaoAccess().getEqualsSignKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Atribuicao__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Atribuicao__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Atribuicao__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAtribuicaoAccess().getAtAssignment_2()); }
	(rule__Atribuicao__AtAssignment_2)
	{ after(grammarAccess.getAtribuicaoAccess().getAtAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Aritmetico__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aritmetico__Group__0__Impl
	rule__Aritmetico__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Aritmetico__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAritmeticoAccess().getOp1Assignment_0()); }
	(rule__Aritmetico__Op1Assignment_0)
	{ after(grammarAccess.getAritmeticoAccess().getOp1Assignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aritmetico__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aritmetico__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Aritmetico__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAritmeticoAccess().getGroup_1()); }
	(rule__Aritmetico__Group_1__0)*
	{ after(grammarAccess.getAritmeticoAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Aritmetico__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aritmetico__Group_1__0__Impl
	rule__Aritmetico__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Aritmetico__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAritmeticoAccess().getOprAssignment_1_0()); }
	(rule__Aritmetico__OprAssignment_1_0)
	{ after(grammarAccess.getAritmeticoAccess().getOprAssignment_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aritmetico__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aritmetico__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Aritmetico__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAritmeticoAccess().getOp2Assignment_1_1()); }
	(rule__Aritmetico__Op2Assignment_1_1)
	{ after(grammarAccess.getAritmeticoAccess().getOp2Assignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Expressao__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Expressao__Group_0__0__Impl
	rule__Expressao__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Expressao__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExpressaoAccess().getLeftParenthesisKeyword_0_0()); }
	'('
	{ after(grammarAccess.getExpressaoAccess().getLeftParenthesisKeyword_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Expressao__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Expressao__Group_0__1__Impl
	rule__Expressao__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Expressao__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExpressaoAccess().getAritmeticoParserRuleCall_0_1()); }
	ruleAritmetico
	{ after(grammarAccess.getExpressaoAccess().getAritmeticoParserRuleCall_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Expressao__Group_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Expressao__Group_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Expressao__Group_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExpressaoAccess().getRightParenthesisKeyword_0_2()); }
	')'
	{ after(grammarAccess.getExpressaoAccess().getRightParenthesisKeyword_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Desvio__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Desvio__Group__0__Impl
	rule__Desvio__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Desvio__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDesvioAccess().getJumpKeyword_0()); }
	'jump'
	{ after(grammarAccess.getDesvioAccess().getJumpKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Desvio__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Desvio__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Desvio__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDesvioAccess().getRotinaAssignment_1()); }
	(rule__Desvio__RotinaAssignment_1)
	{ after(grammarAccess.getDesvioAccess().getRotinaAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Value__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Value__Group_1__0__Impl
	rule__Value__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Value__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getValueAccess().getValueAction_1_0()); }
	()
	{ after(grammarAccess.getValueAccess().getValueAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Value__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Value__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Value__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getValueAccess().getINTTerminalRuleCall_1_1()); }
	RULE_INT
	{ after(grammarAccess.getValueAccess().getINTTerminalRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Programa__FuncoesAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getProgramaAccess().getFuncoesFuncaoParserRuleCall_0_0()); }
		ruleFuncao
		{ after(grammarAccess.getProgramaAccess().getFuncoesFuncaoParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Funcao__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFuncaoAccess().getNameRotuloParserRuleCall_0_0()); }
		ruleRotulo
		{ after(grammarAccess.getFuncaoAccess().getNameRotuloParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Funcao__ComandosAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFuncaoAccess().getComandosComandoParserRuleCall_2_0()); }
		ruleComando
		{ after(grammarAccess.getFuncaoAccess().getComandosComandoParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__ComparacaoAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDesvioCondicionalAccess().getComparacaoComparacaoParserRuleCall_2_0()); }
		ruleComparacao
		{ after(grammarAccess.getDesvioCondicionalAccess().getComparacaoComparacaoParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__ComandosAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDesvioCondicionalAccess().getComandosComandoParserRuleCall_5_0()); }
		ruleComando
		{ after(grammarAccess.getDesvioCondicionalAccess().getComandosComandoParserRuleCall_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DesvioCondicional__ComandoAssignment_7_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDesvioCondicionalAccess().getComandoComandoParserRuleCall_7_2_0()); }
		ruleComando
		{ after(grammarAccess.getDesvioCondicionalAccess().getComandoComandoParserRuleCall_7_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Comparacao__Op1Assignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComparacaoAccess().getOp1ExpressaoParserRuleCall_0_0()); }
		ruleExpressao
		{ after(grammarAccess.getComparacaoAccess().getOp1ExpressaoParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Comparacao__OprAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComparacaoAccess().getOprComparadorParserRuleCall_1_0()); }
		rulecomparador
		{ after(grammarAccess.getComparacaoAccess().getOprComparadorParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Comparacao__Op2Assignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getComparacaoAccess().getOp2ExpressaoParserRuleCall_2_0()); }
		ruleExpressao
		{ after(grammarAccess.getComparacaoAccess().getOp2ExpressaoParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Atribuicao__ResAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAtribuicaoAccess().getResVariavelParserRuleCall_0_0()); }
		rulevariavel
		{ after(grammarAccess.getAtribuicaoAccess().getResVariavelParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Atribuicao__AtAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAtribuicaoAccess().getAtAritmeticoParserRuleCall_2_0()); }
		ruleAritmetico
		{ after(grammarAccess.getAtribuicaoAccess().getAtAritmeticoParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aritmetico__Op1Assignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAritmeticoAccess().getOp1ExpressaoParserRuleCall_0_0()); }
		ruleExpressao
		{ after(grammarAccess.getAritmeticoAccess().getOp1ExpressaoParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aritmetico__OprAssignment_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAritmeticoAccess().getOprOperacaoParserRuleCall_1_0_0()); }
		ruleOperacao
		{ after(grammarAccess.getAritmeticoAccess().getOprOperacaoParserRuleCall_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aritmetico__Op2Assignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAritmeticoAccess().getOp2ExpressaoParserRuleCall_1_1_0()); }
		ruleExpressao
		{ after(grammarAccess.getAritmeticoAccess().getOp2ExpressaoParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Desvio__RotinaAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDesvioAccess().getRotinaFuncaoCrossReference_1_0()); }
		(
			{ before(grammarAccess.getDesvioAccess().getRotinaFuncaoIDTerminalRuleCall_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getDesvioAccess().getRotinaFuncaoIDTerminalRuleCall_1_0_1()); }
		)
		{ after(grammarAccess.getDesvioAccess().getRotinaFuncaoCrossReference_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variavel__NameAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariavelAccess().getNameRotuloParserRuleCall_0()); }
		ruleRotulo
		{ after(grammarAccess.getVariavelAccess().getNameRotuloParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;