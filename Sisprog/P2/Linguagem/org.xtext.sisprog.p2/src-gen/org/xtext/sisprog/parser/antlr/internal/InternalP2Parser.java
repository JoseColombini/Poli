package org.xtext.sisprog.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.xtext.sisprog.services.P2GrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalP2Parser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_ID", "RULE_INT", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'END'", "':'", "';'", "'if'", "'('", "')'", "'{'", "'}'", "'else'", "'='", "'jump'", "'+'", "'-'", "'*'", "'/'", "'**'", "'=='", "'!='", "'<'", "'>'", "'<='", "'>='"
    };
    public static final int RULE_STRING=6;
    public static final int RULE_SL_COMMENT=8;
    public static final int T__19=19;
    public static final int T__15=15;
    public static final int T__16=16;
    public static final int T__17=17;
    public static final int T__18=18;
    public static final int T__11=11;
    public static final int T__12=12;
    public static final int T__13=13;
    public static final int T__14=14;
    public static final int EOF=-1;
    public static final int T__30=30;
    public static final int T__31=31;
    public static final int T__32=32;
    public static final int RULE_ID=4;
    public static final int RULE_WS=9;
    public static final int RULE_ANY_OTHER=10;
    public static final int T__26=26;
    public static final int T__27=27;
    public static final int T__28=28;
    public static final int RULE_INT=5;
    public static final int T__29=29;
    public static final int T__22=22;
    public static final int RULE_ML_COMMENT=7;
    public static final int T__23=23;
    public static final int T__24=24;
    public static final int T__25=25;
    public static final int T__20=20;
    public static final int T__21=21;

    // delegates
    // delegators


        public InternalP2Parser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalP2Parser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalP2Parser.tokenNames; }
    public String getGrammarFileName() { return "InternalP2.g"; }



     	private P2GrammarAccess grammarAccess;

        public InternalP2Parser(TokenStream input, P2GrammarAccess grammarAccess) {
            this(input);
            this.grammarAccess = grammarAccess;
            registerRules(grammarAccess.getGrammar());
        }

        @Override
        protected String getFirstRuleName() {
        	return "Programa";
       	}

       	@Override
       	protected P2GrammarAccess getGrammarAccess() {
       		return grammarAccess;
       	}




    // $ANTLR start "entryRulePrograma"
    // InternalP2.g:64:1: entryRulePrograma returns [EObject current=null] : iv_rulePrograma= rulePrograma EOF ;
    public final EObject entryRulePrograma() throws RecognitionException {
        EObject current = null;

        EObject iv_rulePrograma = null;


        try {
            // InternalP2.g:64:49: (iv_rulePrograma= rulePrograma EOF )
            // InternalP2.g:65:2: iv_rulePrograma= rulePrograma EOF
            {
             newCompositeNode(grammarAccess.getProgramaRule()); 
            pushFollow(FOLLOW_1);
            iv_rulePrograma=rulePrograma();

            state._fsp--;

             current =iv_rulePrograma; 
            match(input,EOF,FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRulePrograma"


    // $ANTLR start "rulePrograma"
    // InternalP2.g:71:1: rulePrograma returns [EObject current=null] : ( ( (lv_funcoes_0_0= ruleFuncao ) )+ otherlv_1= 'END' ) ;
    public final EObject rulePrograma() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        EObject lv_funcoes_0_0 = null;



        	enterRule();

        try {
            // InternalP2.g:77:2: ( ( ( (lv_funcoes_0_0= ruleFuncao ) )+ otherlv_1= 'END' ) )
            // InternalP2.g:78:2: ( ( (lv_funcoes_0_0= ruleFuncao ) )+ otherlv_1= 'END' )
            {
            // InternalP2.g:78:2: ( ( (lv_funcoes_0_0= ruleFuncao ) )+ otherlv_1= 'END' )
            // InternalP2.g:79:3: ( (lv_funcoes_0_0= ruleFuncao ) )+ otherlv_1= 'END'
            {
            // InternalP2.g:79:3: ( (lv_funcoes_0_0= ruleFuncao ) )+
            int cnt1=0;
            loop1:
            do {
                int alt1=2;
                int LA1_0 = input.LA(1);

                if ( (LA1_0==RULE_ID) ) {
                    alt1=1;
                }


                switch (alt1) {
            	case 1 :
            	    // InternalP2.g:80:4: (lv_funcoes_0_0= ruleFuncao )
            	    {
            	    // InternalP2.g:80:4: (lv_funcoes_0_0= ruleFuncao )
            	    // InternalP2.g:81:5: lv_funcoes_0_0= ruleFuncao
            	    {

            	    					newCompositeNode(grammarAccess.getProgramaAccess().getFuncoesFuncaoParserRuleCall_0_0());
            	    				
            	    pushFollow(FOLLOW_3);
            	    lv_funcoes_0_0=ruleFuncao();

            	    state._fsp--;


            	    					if (current==null) {
            	    						current = createModelElementForParent(grammarAccess.getProgramaRule());
            	    					}
            	    					add(
            	    						current,
            	    						"funcoes",
            	    						lv_funcoes_0_0,
            	    						"org.xtext.sisprog.P2.Funcao");
            	    					afterParserOrEnumRuleCall();
            	    				

            	    }


            	    }
            	    break;

            	default :
            	    if ( cnt1 >= 1 ) break loop1;
                        EarlyExitException eee =
                            new EarlyExitException(1, input);
                        throw eee;
                }
                cnt1++;
            } while (true);

            otherlv_1=(Token)match(input,11,FOLLOW_2); 

            			newLeafNode(otherlv_1, grammarAccess.getProgramaAccess().getENDKeyword_1());
            		

            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "rulePrograma"


    // $ANTLR start "entryRuleFuncao"
    // InternalP2.g:106:1: entryRuleFuncao returns [EObject current=null] : iv_ruleFuncao= ruleFuncao EOF ;
    public final EObject entryRuleFuncao() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleFuncao = null;


        try {
            // InternalP2.g:106:47: (iv_ruleFuncao= ruleFuncao EOF )
            // InternalP2.g:107:2: iv_ruleFuncao= ruleFuncao EOF
            {
             newCompositeNode(grammarAccess.getFuncaoRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleFuncao=ruleFuncao();

            state._fsp--;

             current =iv_ruleFuncao; 
            match(input,EOF,FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleFuncao"


    // $ANTLR start "ruleFuncao"
    // InternalP2.g:113:1: ruleFuncao returns [EObject current=null] : ( ( (lv_name_0_0= ruleRotulo ) ) otherlv_1= ':' ( (lv_comandos_2_0= ruleComando ) )+ ) ;
    public final EObject ruleFuncao() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        AntlrDatatypeRuleToken lv_name_0_0 = null;

        EObject lv_comandos_2_0 = null;



        	enterRule();

        try {
            // InternalP2.g:119:2: ( ( ( (lv_name_0_0= ruleRotulo ) ) otherlv_1= ':' ( (lv_comandos_2_0= ruleComando ) )+ ) )
            // InternalP2.g:120:2: ( ( (lv_name_0_0= ruleRotulo ) ) otherlv_1= ':' ( (lv_comandos_2_0= ruleComando ) )+ )
            {
            // InternalP2.g:120:2: ( ( (lv_name_0_0= ruleRotulo ) ) otherlv_1= ':' ( (lv_comandos_2_0= ruleComando ) )+ )
            // InternalP2.g:121:3: ( (lv_name_0_0= ruleRotulo ) ) otherlv_1= ':' ( (lv_comandos_2_0= ruleComando ) )+
            {
            // InternalP2.g:121:3: ( (lv_name_0_0= ruleRotulo ) )
            // InternalP2.g:122:4: (lv_name_0_0= ruleRotulo )
            {
            // InternalP2.g:122:4: (lv_name_0_0= ruleRotulo )
            // InternalP2.g:123:5: lv_name_0_0= ruleRotulo
            {

            					newCompositeNode(grammarAccess.getFuncaoAccess().getNameRotuloParserRuleCall_0_0());
            				
            pushFollow(FOLLOW_4);
            lv_name_0_0=ruleRotulo();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getFuncaoRule());
            					}
            					set(
            						current,
            						"name",
            						lv_name_0_0,
            						"org.xtext.sisprog.P2.Rotulo");
            					afterParserOrEnumRuleCall();
            				

            }


            }

            otherlv_1=(Token)match(input,12,FOLLOW_5); 

            			newLeafNode(otherlv_1, grammarAccess.getFuncaoAccess().getColonKeyword_1());
            		
            // InternalP2.g:144:3: ( (lv_comandos_2_0= ruleComando ) )+
            int cnt2=0;
            loop2:
            do {
                int alt2=2;
                int LA2_0 = input.LA(1);

                if ( (LA2_0==RULE_ID) ) {
                    int LA2_2 = input.LA(2);

                    if ( (LA2_2==20) ) {
                        alt2=1;
                    }


                }
                else if ( (LA2_0==14||LA2_0==21) ) {
                    alt2=1;
                }


                switch (alt2) {
            	case 1 :
            	    // InternalP2.g:145:4: (lv_comandos_2_0= ruleComando )
            	    {
            	    // InternalP2.g:145:4: (lv_comandos_2_0= ruleComando )
            	    // InternalP2.g:146:5: lv_comandos_2_0= ruleComando
            	    {

            	    					newCompositeNode(grammarAccess.getFuncaoAccess().getComandosComandoParserRuleCall_2_0());
            	    				
            	    pushFollow(FOLLOW_6);
            	    lv_comandos_2_0=ruleComando();

            	    state._fsp--;


            	    					if (current==null) {
            	    						current = createModelElementForParent(grammarAccess.getFuncaoRule());
            	    					}
            	    					add(
            	    						current,
            	    						"comandos",
            	    						lv_comandos_2_0,
            	    						"org.xtext.sisprog.P2.Comando");
            	    					afterParserOrEnumRuleCall();
            	    				

            	    }


            	    }
            	    break;

            	default :
            	    if ( cnt2 >= 1 ) break loop2;
                        EarlyExitException eee =
                            new EarlyExitException(2, input);
                        throw eee;
                }
                cnt2++;
            } while (true);


            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleFuncao"


    // $ANTLR start "entryRuleComando"
    // InternalP2.g:167:1: entryRuleComando returns [EObject current=null] : iv_ruleComando= ruleComando EOF ;
    public final EObject entryRuleComando() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleComando = null;


        try {
            // InternalP2.g:167:48: (iv_ruleComando= ruleComando EOF )
            // InternalP2.g:168:2: iv_ruleComando= ruleComando EOF
            {
             newCompositeNode(grammarAccess.getComandoRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleComando=ruleComando();

            state._fsp--;

             current =iv_ruleComando; 
            match(input,EOF,FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleComando"


    // $ANTLR start "ruleComando"
    // InternalP2.g:174:1: ruleComando returns [EObject current=null] : ( (this_Atribuicao_0= ruleAtribuicao | this_Desvio_1= ruleDesvio | this_DesvioCondicional_2= ruleDesvioCondicional ) otherlv_3= ';' ) ;
    public final EObject ruleComando() throws RecognitionException {
        EObject current = null;

        Token otherlv_3=null;
        EObject this_Atribuicao_0 = null;

        EObject this_Desvio_1 = null;

        EObject this_DesvioCondicional_2 = null;



        	enterRule();

        try {
            // InternalP2.g:180:2: ( ( (this_Atribuicao_0= ruleAtribuicao | this_Desvio_1= ruleDesvio | this_DesvioCondicional_2= ruleDesvioCondicional ) otherlv_3= ';' ) )
            // InternalP2.g:181:2: ( (this_Atribuicao_0= ruleAtribuicao | this_Desvio_1= ruleDesvio | this_DesvioCondicional_2= ruleDesvioCondicional ) otherlv_3= ';' )
            {
            // InternalP2.g:181:2: ( (this_Atribuicao_0= ruleAtribuicao | this_Desvio_1= ruleDesvio | this_DesvioCondicional_2= ruleDesvioCondicional ) otherlv_3= ';' )
            // InternalP2.g:182:3: (this_Atribuicao_0= ruleAtribuicao | this_Desvio_1= ruleDesvio | this_DesvioCondicional_2= ruleDesvioCondicional ) otherlv_3= ';'
            {
            // InternalP2.g:182:3: (this_Atribuicao_0= ruleAtribuicao | this_Desvio_1= ruleDesvio | this_DesvioCondicional_2= ruleDesvioCondicional )
            int alt3=3;
            switch ( input.LA(1) ) {
            case RULE_ID:
                {
                alt3=1;
                }
                break;
            case 21:
                {
                alt3=2;
                }
                break;
            case 14:
                {
                alt3=3;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 3, 0, input);

                throw nvae;
            }

            switch (alt3) {
                case 1 :
                    // InternalP2.g:183:4: this_Atribuicao_0= ruleAtribuicao
                    {

                    				newCompositeNode(grammarAccess.getComandoAccess().getAtribuicaoParserRuleCall_0_0());
                    			
                    pushFollow(FOLLOW_7);
                    this_Atribuicao_0=ruleAtribuicao();

                    state._fsp--;


                    				current = this_Atribuicao_0;
                    				afterParserOrEnumRuleCall();
                    			

                    }
                    break;
                case 2 :
                    // InternalP2.g:192:4: this_Desvio_1= ruleDesvio
                    {

                    				newCompositeNode(grammarAccess.getComandoAccess().getDesvioParserRuleCall_0_1());
                    			
                    pushFollow(FOLLOW_7);
                    this_Desvio_1=ruleDesvio();

                    state._fsp--;


                    				current = this_Desvio_1;
                    				afterParserOrEnumRuleCall();
                    			

                    }
                    break;
                case 3 :
                    // InternalP2.g:201:4: this_DesvioCondicional_2= ruleDesvioCondicional
                    {

                    				newCompositeNode(grammarAccess.getComandoAccess().getDesvioCondicionalParserRuleCall_0_2());
                    			
                    pushFollow(FOLLOW_7);
                    this_DesvioCondicional_2=ruleDesvioCondicional();

                    state._fsp--;


                    				current = this_DesvioCondicional_2;
                    				afterParserOrEnumRuleCall();
                    			

                    }
                    break;

            }

            otherlv_3=(Token)match(input,13,FOLLOW_2); 

            			newLeafNode(otherlv_3, grammarAccess.getComandoAccess().getSemicolonKeyword_1());
            		

            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleComando"


    // $ANTLR start "entryRuleDesvioCondicional"
    // InternalP2.g:218:1: entryRuleDesvioCondicional returns [EObject current=null] : iv_ruleDesvioCondicional= ruleDesvioCondicional EOF ;
    public final EObject entryRuleDesvioCondicional() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleDesvioCondicional = null;


        try {
            // InternalP2.g:218:58: (iv_ruleDesvioCondicional= ruleDesvioCondicional EOF )
            // InternalP2.g:219:2: iv_ruleDesvioCondicional= ruleDesvioCondicional EOF
            {
             newCompositeNode(grammarAccess.getDesvioCondicionalRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleDesvioCondicional=ruleDesvioCondicional();

            state._fsp--;

             current =iv_ruleDesvioCondicional; 
            match(input,EOF,FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleDesvioCondicional"


    // $ANTLR start "ruleDesvioCondicional"
    // InternalP2.g:225:1: ruleDesvioCondicional returns [EObject current=null] : (otherlv_0= 'if' otherlv_1= '(' ( (lv_comparacao_2_0= ruleComparacao ) )+ otherlv_3= ')' otherlv_4= '{' ( (lv_comandos_5_0= ruleComando ) )+ otherlv_6= '}' (otherlv_7= 'else' otherlv_8= '{' ( (lv_comando_9_0= ruleComando ) )+ otherlv_10= '}' )? ) ;
    public final EObject ruleDesvioCondicional() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token otherlv_1=null;
        Token otherlv_3=null;
        Token otherlv_4=null;
        Token otherlv_6=null;
        Token otherlv_7=null;
        Token otherlv_8=null;
        Token otherlv_10=null;
        EObject lv_comparacao_2_0 = null;

        EObject lv_comandos_5_0 = null;

        EObject lv_comando_9_0 = null;



        	enterRule();

        try {
            // InternalP2.g:231:2: ( (otherlv_0= 'if' otherlv_1= '(' ( (lv_comparacao_2_0= ruleComparacao ) )+ otherlv_3= ')' otherlv_4= '{' ( (lv_comandos_5_0= ruleComando ) )+ otherlv_6= '}' (otherlv_7= 'else' otherlv_8= '{' ( (lv_comando_9_0= ruleComando ) )+ otherlv_10= '}' )? ) )
            // InternalP2.g:232:2: (otherlv_0= 'if' otherlv_1= '(' ( (lv_comparacao_2_0= ruleComparacao ) )+ otherlv_3= ')' otherlv_4= '{' ( (lv_comandos_5_0= ruleComando ) )+ otherlv_6= '}' (otherlv_7= 'else' otherlv_8= '{' ( (lv_comando_9_0= ruleComando ) )+ otherlv_10= '}' )? )
            {
            // InternalP2.g:232:2: (otherlv_0= 'if' otherlv_1= '(' ( (lv_comparacao_2_0= ruleComparacao ) )+ otherlv_3= ')' otherlv_4= '{' ( (lv_comandos_5_0= ruleComando ) )+ otherlv_6= '}' (otherlv_7= 'else' otherlv_8= '{' ( (lv_comando_9_0= ruleComando ) )+ otherlv_10= '}' )? )
            // InternalP2.g:233:3: otherlv_0= 'if' otherlv_1= '(' ( (lv_comparacao_2_0= ruleComparacao ) )+ otherlv_3= ')' otherlv_4= '{' ( (lv_comandos_5_0= ruleComando ) )+ otherlv_6= '}' (otherlv_7= 'else' otherlv_8= '{' ( (lv_comando_9_0= ruleComando ) )+ otherlv_10= '}' )?
            {
            otherlv_0=(Token)match(input,14,FOLLOW_8); 

            			newLeafNode(otherlv_0, grammarAccess.getDesvioCondicionalAccess().getIfKeyword_0());
            		
            otherlv_1=(Token)match(input,15,FOLLOW_9); 

            			newLeafNode(otherlv_1, grammarAccess.getDesvioCondicionalAccess().getLeftParenthesisKeyword_1());
            		
            // InternalP2.g:241:3: ( (lv_comparacao_2_0= ruleComparacao ) )+
            int cnt4=0;
            loop4:
            do {
                int alt4=2;
                int LA4_0 = input.LA(1);

                if ( ((LA4_0>=RULE_ID && LA4_0<=RULE_INT)||LA4_0==15) ) {
                    alt4=1;
                }


                switch (alt4) {
            	case 1 :
            	    // InternalP2.g:242:4: (lv_comparacao_2_0= ruleComparacao )
            	    {
            	    // InternalP2.g:242:4: (lv_comparacao_2_0= ruleComparacao )
            	    // InternalP2.g:243:5: lv_comparacao_2_0= ruleComparacao
            	    {

            	    					newCompositeNode(grammarAccess.getDesvioCondicionalAccess().getComparacaoComparacaoParserRuleCall_2_0());
            	    				
            	    pushFollow(FOLLOW_10);
            	    lv_comparacao_2_0=ruleComparacao();

            	    state._fsp--;


            	    					if (current==null) {
            	    						current = createModelElementForParent(grammarAccess.getDesvioCondicionalRule());
            	    					}
            	    					add(
            	    						current,
            	    						"comparacao",
            	    						lv_comparacao_2_0,
            	    						"org.xtext.sisprog.P2.Comparacao");
            	    					afterParserOrEnumRuleCall();
            	    				

            	    }


            	    }
            	    break;

            	default :
            	    if ( cnt4 >= 1 ) break loop4;
                        EarlyExitException eee =
                            new EarlyExitException(4, input);
                        throw eee;
                }
                cnt4++;
            } while (true);

            otherlv_3=(Token)match(input,16,FOLLOW_11); 

            			newLeafNode(otherlv_3, grammarAccess.getDesvioCondicionalAccess().getRightParenthesisKeyword_3());
            		
            otherlv_4=(Token)match(input,17,FOLLOW_5); 

            			newLeafNode(otherlv_4, grammarAccess.getDesvioCondicionalAccess().getLeftCurlyBracketKeyword_4());
            		
            // InternalP2.g:268:3: ( (lv_comandos_5_0= ruleComando ) )+
            int cnt5=0;
            loop5:
            do {
                int alt5=2;
                int LA5_0 = input.LA(1);

                if ( (LA5_0==RULE_ID||LA5_0==14||LA5_0==21) ) {
                    alt5=1;
                }


                switch (alt5) {
            	case 1 :
            	    // InternalP2.g:269:4: (lv_comandos_5_0= ruleComando )
            	    {
            	    // InternalP2.g:269:4: (lv_comandos_5_0= ruleComando )
            	    // InternalP2.g:270:5: lv_comandos_5_0= ruleComando
            	    {

            	    					newCompositeNode(grammarAccess.getDesvioCondicionalAccess().getComandosComandoParserRuleCall_5_0());
            	    				
            	    pushFollow(FOLLOW_12);
            	    lv_comandos_5_0=ruleComando();

            	    state._fsp--;


            	    					if (current==null) {
            	    						current = createModelElementForParent(grammarAccess.getDesvioCondicionalRule());
            	    					}
            	    					add(
            	    						current,
            	    						"comandos",
            	    						lv_comandos_5_0,
            	    						"org.xtext.sisprog.P2.Comando");
            	    					afterParserOrEnumRuleCall();
            	    				

            	    }


            	    }
            	    break;

            	default :
            	    if ( cnt5 >= 1 ) break loop5;
                        EarlyExitException eee =
                            new EarlyExitException(5, input);
                        throw eee;
                }
                cnt5++;
            } while (true);

            otherlv_6=(Token)match(input,18,FOLLOW_13); 

            			newLeafNode(otherlv_6, grammarAccess.getDesvioCondicionalAccess().getRightCurlyBracketKeyword_6());
            		
            // InternalP2.g:291:3: (otherlv_7= 'else' otherlv_8= '{' ( (lv_comando_9_0= ruleComando ) )+ otherlv_10= '}' )?
            int alt7=2;
            int LA7_0 = input.LA(1);

            if ( (LA7_0==19) ) {
                alt7=1;
            }
            switch (alt7) {
                case 1 :
                    // InternalP2.g:292:4: otherlv_7= 'else' otherlv_8= '{' ( (lv_comando_9_0= ruleComando ) )+ otherlv_10= '}'
                    {
                    otherlv_7=(Token)match(input,19,FOLLOW_11); 

                    				newLeafNode(otherlv_7, grammarAccess.getDesvioCondicionalAccess().getElseKeyword_7_0());
                    			
                    otherlv_8=(Token)match(input,17,FOLLOW_5); 

                    				newLeafNode(otherlv_8, grammarAccess.getDesvioCondicionalAccess().getLeftCurlyBracketKeyword_7_1());
                    			
                    // InternalP2.g:300:4: ( (lv_comando_9_0= ruleComando ) )+
                    int cnt6=0;
                    loop6:
                    do {
                        int alt6=2;
                        int LA6_0 = input.LA(1);

                        if ( (LA6_0==RULE_ID||LA6_0==14||LA6_0==21) ) {
                            alt6=1;
                        }


                        switch (alt6) {
                    	case 1 :
                    	    // InternalP2.g:301:5: (lv_comando_9_0= ruleComando )
                    	    {
                    	    // InternalP2.g:301:5: (lv_comando_9_0= ruleComando )
                    	    // InternalP2.g:302:6: lv_comando_9_0= ruleComando
                    	    {

                    	    						newCompositeNode(grammarAccess.getDesvioCondicionalAccess().getComandoComandoParserRuleCall_7_2_0());
                    	    					
                    	    pushFollow(FOLLOW_12);
                    	    lv_comando_9_0=ruleComando();

                    	    state._fsp--;


                    	    						if (current==null) {
                    	    							current = createModelElementForParent(grammarAccess.getDesvioCondicionalRule());
                    	    						}
                    	    						add(
                    	    							current,
                    	    							"comando",
                    	    							lv_comando_9_0,
                    	    							"org.xtext.sisprog.P2.Comando");
                    	    						afterParserOrEnumRuleCall();
                    	    					

                    	    }


                    	    }
                    	    break;

                    	default :
                    	    if ( cnt6 >= 1 ) break loop6;
                                EarlyExitException eee =
                                    new EarlyExitException(6, input);
                                throw eee;
                        }
                        cnt6++;
                    } while (true);

                    otherlv_10=(Token)match(input,18,FOLLOW_2); 

                    				newLeafNode(otherlv_10, grammarAccess.getDesvioCondicionalAccess().getRightCurlyBracketKeyword_7_3());
                    			

                    }
                    break;

            }


            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleDesvioCondicional"


    // $ANTLR start "entryRuleComparacao"
    // InternalP2.g:328:1: entryRuleComparacao returns [EObject current=null] : iv_ruleComparacao= ruleComparacao EOF ;
    public final EObject entryRuleComparacao() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleComparacao = null;


        try {
            // InternalP2.g:328:51: (iv_ruleComparacao= ruleComparacao EOF )
            // InternalP2.g:329:2: iv_ruleComparacao= ruleComparacao EOF
            {
             newCompositeNode(grammarAccess.getComparacaoRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleComparacao=ruleComparacao();

            state._fsp--;

             current =iv_ruleComparacao; 
            match(input,EOF,FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleComparacao"


    // $ANTLR start "ruleComparacao"
    // InternalP2.g:335:1: ruleComparacao returns [EObject current=null] : ( ( (lv_op1_0_0= ruleExpressao ) ) ( (lv_opr_1_0= rulecomparador ) ) ( (lv_op2_2_0= ruleExpressao ) ) ) ;
    public final EObject ruleComparacao() throws RecognitionException {
        EObject current = null;

        EObject lv_op1_0_0 = null;

        AntlrDatatypeRuleToken lv_opr_1_0 = null;

        EObject lv_op2_2_0 = null;



        	enterRule();

        try {
            // InternalP2.g:341:2: ( ( ( (lv_op1_0_0= ruleExpressao ) ) ( (lv_opr_1_0= rulecomparador ) ) ( (lv_op2_2_0= ruleExpressao ) ) ) )
            // InternalP2.g:342:2: ( ( (lv_op1_0_0= ruleExpressao ) ) ( (lv_opr_1_0= rulecomparador ) ) ( (lv_op2_2_0= ruleExpressao ) ) )
            {
            // InternalP2.g:342:2: ( ( (lv_op1_0_0= ruleExpressao ) ) ( (lv_opr_1_0= rulecomparador ) ) ( (lv_op2_2_0= ruleExpressao ) ) )
            // InternalP2.g:343:3: ( (lv_op1_0_0= ruleExpressao ) ) ( (lv_opr_1_0= rulecomparador ) ) ( (lv_op2_2_0= ruleExpressao ) )
            {
            // InternalP2.g:343:3: ( (lv_op1_0_0= ruleExpressao ) )
            // InternalP2.g:344:4: (lv_op1_0_0= ruleExpressao )
            {
            // InternalP2.g:344:4: (lv_op1_0_0= ruleExpressao )
            // InternalP2.g:345:5: lv_op1_0_0= ruleExpressao
            {

            					newCompositeNode(grammarAccess.getComparacaoAccess().getOp1ExpressaoParserRuleCall_0_0());
            				
            pushFollow(FOLLOW_14);
            lv_op1_0_0=ruleExpressao();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getComparacaoRule());
            					}
            					set(
            						current,
            						"op1",
            						lv_op1_0_0,
            						"org.xtext.sisprog.P2.Expressao");
            					afterParserOrEnumRuleCall();
            				

            }


            }

            // InternalP2.g:362:3: ( (lv_opr_1_0= rulecomparador ) )
            // InternalP2.g:363:4: (lv_opr_1_0= rulecomparador )
            {
            // InternalP2.g:363:4: (lv_opr_1_0= rulecomparador )
            // InternalP2.g:364:5: lv_opr_1_0= rulecomparador
            {

            					newCompositeNode(grammarAccess.getComparacaoAccess().getOprComparadorParserRuleCall_1_0());
            				
            pushFollow(FOLLOW_9);
            lv_opr_1_0=rulecomparador();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getComparacaoRule());
            					}
            					add(
            						current,
            						"opr",
            						lv_opr_1_0,
            						"org.xtext.sisprog.P2.comparador");
            					afterParserOrEnumRuleCall();
            				

            }


            }

            // InternalP2.g:381:3: ( (lv_op2_2_0= ruleExpressao ) )
            // InternalP2.g:382:4: (lv_op2_2_0= ruleExpressao )
            {
            // InternalP2.g:382:4: (lv_op2_2_0= ruleExpressao )
            // InternalP2.g:383:5: lv_op2_2_0= ruleExpressao
            {

            					newCompositeNode(grammarAccess.getComparacaoAccess().getOp2ExpressaoParserRuleCall_2_0());
            				
            pushFollow(FOLLOW_2);
            lv_op2_2_0=ruleExpressao();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getComparacaoRule());
            					}
            					set(
            						current,
            						"op2",
            						lv_op2_2_0,
            						"org.xtext.sisprog.P2.Expressao");
            					afterParserOrEnumRuleCall();
            				

            }


            }


            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleComparacao"


    // $ANTLR start "entryRuleAtribuicao"
    // InternalP2.g:404:1: entryRuleAtribuicao returns [EObject current=null] : iv_ruleAtribuicao= ruleAtribuicao EOF ;
    public final EObject entryRuleAtribuicao() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleAtribuicao = null;


        try {
            // InternalP2.g:404:51: (iv_ruleAtribuicao= ruleAtribuicao EOF )
            // InternalP2.g:405:2: iv_ruleAtribuicao= ruleAtribuicao EOF
            {
             newCompositeNode(grammarAccess.getAtribuicaoRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleAtribuicao=ruleAtribuicao();

            state._fsp--;

             current =iv_ruleAtribuicao; 
            match(input,EOF,FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleAtribuicao"


    // $ANTLR start "ruleAtribuicao"
    // InternalP2.g:411:1: ruleAtribuicao returns [EObject current=null] : ( ( (lv_res_0_0= rulevariavel ) ) otherlv_1= '=' ( (lv_at_2_0= ruleAritmetico ) ) ) ;
    public final EObject ruleAtribuicao() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        EObject lv_res_0_0 = null;

        EObject lv_at_2_0 = null;



        	enterRule();

        try {
            // InternalP2.g:417:2: ( ( ( (lv_res_0_0= rulevariavel ) ) otherlv_1= '=' ( (lv_at_2_0= ruleAritmetico ) ) ) )
            // InternalP2.g:418:2: ( ( (lv_res_0_0= rulevariavel ) ) otherlv_1= '=' ( (lv_at_2_0= ruleAritmetico ) ) )
            {
            // InternalP2.g:418:2: ( ( (lv_res_0_0= rulevariavel ) ) otherlv_1= '=' ( (lv_at_2_0= ruleAritmetico ) ) )
            // InternalP2.g:419:3: ( (lv_res_0_0= rulevariavel ) ) otherlv_1= '=' ( (lv_at_2_0= ruleAritmetico ) )
            {
            // InternalP2.g:419:3: ( (lv_res_0_0= rulevariavel ) )
            // InternalP2.g:420:4: (lv_res_0_0= rulevariavel )
            {
            // InternalP2.g:420:4: (lv_res_0_0= rulevariavel )
            // InternalP2.g:421:5: lv_res_0_0= rulevariavel
            {

            					newCompositeNode(grammarAccess.getAtribuicaoAccess().getResVariavelParserRuleCall_0_0());
            				
            pushFollow(FOLLOW_15);
            lv_res_0_0=rulevariavel();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getAtribuicaoRule());
            					}
            					set(
            						current,
            						"res",
            						lv_res_0_0,
            						"org.xtext.sisprog.P2.variavel");
            					afterParserOrEnumRuleCall();
            				

            }


            }

            otherlv_1=(Token)match(input,20,FOLLOW_9); 

            			newLeafNode(otherlv_1, grammarAccess.getAtribuicaoAccess().getEqualsSignKeyword_1());
            		
            // InternalP2.g:442:3: ( (lv_at_2_0= ruleAritmetico ) )
            // InternalP2.g:443:4: (lv_at_2_0= ruleAritmetico )
            {
            // InternalP2.g:443:4: (lv_at_2_0= ruleAritmetico )
            // InternalP2.g:444:5: lv_at_2_0= ruleAritmetico
            {

            					newCompositeNode(grammarAccess.getAtribuicaoAccess().getAtAritmeticoParserRuleCall_2_0());
            				
            pushFollow(FOLLOW_2);
            lv_at_2_0=ruleAritmetico();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getAtribuicaoRule());
            					}
            					set(
            						current,
            						"at",
            						lv_at_2_0,
            						"org.xtext.sisprog.P2.Aritmetico");
            					afterParserOrEnumRuleCall();
            				

            }


            }


            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleAtribuicao"


    // $ANTLR start "entryRuleAritmetico"
    // InternalP2.g:465:1: entryRuleAritmetico returns [EObject current=null] : iv_ruleAritmetico= ruleAritmetico EOF ;
    public final EObject entryRuleAritmetico() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleAritmetico = null;


        try {
            // InternalP2.g:465:51: (iv_ruleAritmetico= ruleAritmetico EOF )
            // InternalP2.g:466:2: iv_ruleAritmetico= ruleAritmetico EOF
            {
             newCompositeNode(grammarAccess.getAritmeticoRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleAritmetico=ruleAritmetico();

            state._fsp--;

             current =iv_ruleAritmetico; 
            match(input,EOF,FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleAritmetico"


    // $ANTLR start "ruleAritmetico"
    // InternalP2.g:472:1: ruleAritmetico returns [EObject current=null] : ( ( (lv_op1_0_0= ruleExpressao ) ) ( ( (lv_opr_1_0= ruleOperacao ) ) ( (lv_op2_2_0= ruleExpressao ) ) )* ) ;
    public final EObject ruleAritmetico() throws RecognitionException {
        EObject current = null;

        EObject lv_op1_0_0 = null;

        AntlrDatatypeRuleToken lv_opr_1_0 = null;

        EObject lv_op2_2_0 = null;



        	enterRule();

        try {
            // InternalP2.g:478:2: ( ( ( (lv_op1_0_0= ruleExpressao ) ) ( ( (lv_opr_1_0= ruleOperacao ) ) ( (lv_op2_2_0= ruleExpressao ) ) )* ) )
            // InternalP2.g:479:2: ( ( (lv_op1_0_0= ruleExpressao ) ) ( ( (lv_opr_1_0= ruleOperacao ) ) ( (lv_op2_2_0= ruleExpressao ) ) )* )
            {
            // InternalP2.g:479:2: ( ( (lv_op1_0_0= ruleExpressao ) ) ( ( (lv_opr_1_0= ruleOperacao ) ) ( (lv_op2_2_0= ruleExpressao ) ) )* )
            // InternalP2.g:480:3: ( (lv_op1_0_0= ruleExpressao ) ) ( ( (lv_opr_1_0= ruleOperacao ) ) ( (lv_op2_2_0= ruleExpressao ) ) )*
            {
            // InternalP2.g:480:3: ( (lv_op1_0_0= ruleExpressao ) )
            // InternalP2.g:481:4: (lv_op1_0_0= ruleExpressao )
            {
            // InternalP2.g:481:4: (lv_op1_0_0= ruleExpressao )
            // InternalP2.g:482:5: lv_op1_0_0= ruleExpressao
            {

            					newCompositeNode(grammarAccess.getAritmeticoAccess().getOp1ExpressaoParserRuleCall_0_0());
            				
            pushFollow(FOLLOW_16);
            lv_op1_0_0=ruleExpressao();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getAritmeticoRule());
            					}
            					set(
            						current,
            						"op1",
            						lv_op1_0_0,
            						"org.xtext.sisprog.P2.Expressao");
            					afterParserOrEnumRuleCall();
            				

            }


            }

            // InternalP2.g:499:3: ( ( (lv_opr_1_0= ruleOperacao ) ) ( (lv_op2_2_0= ruleExpressao ) ) )*
            loop8:
            do {
                int alt8=2;
                int LA8_0 = input.LA(1);

                if ( ((LA8_0>=22 && LA8_0<=26)) ) {
                    alt8=1;
                }


                switch (alt8) {
            	case 1 :
            	    // InternalP2.g:500:4: ( (lv_opr_1_0= ruleOperacao ) ) ( (lv_op2_2_0= ruleExpressao ) )
            	    {
            	    // InternalP2.g:500:4: ( (lv_opr_1_0= ruleOperacao ) )
            	    // InternalP2.g:501:5: (lv_opr_1_0= ruleOperacao )
            	    {
            	    // InternalP2.g:501:5: (lv_opr_1_0= ruleOperacao )
            	    // InternalP2.g:502:6: lv_opr_1_0= ruleOperacao
            	    {

            	    						newCompositeNode(grammarAccess.getAritmeticoAccess().getOprOperacaoParserRuleCall_1_0_0());
            	    					
            	    pushFollow(FOLLOW_9);
            	    lv_opr_1_0=ruleOperacao();

            	    state._fsp--;


            	    						if (current==null) {
            	    							current = createModelElementForParent(grammarAccess.getAritmeticoRule());
            	    						}
            	    						add(
            	    							current,
            	    							"opr",
            	    							lv_opr_1_0,
            	    							"org.xtext.sisprog.P2.Operacao");
            	    						afterParserOrEnumRuleCall();
            	    					

            	    }


            	    }

            	    // InternalP2.g:519:4: ( (lv_op2_2_0= ruleExpressao ) )
            	    // InternalP2.g:520:5: (lv_op2_2_0= ruleExpressao )
            	    {
            	    // InternalP2.g:520:5: (lv_op2_2_0= ruleExpressao )
            	    // InternalP2.g:521:6: lv_op2_2_0= ruleExpressao
            	    {

            	    						newCompositeNode(grammarAccess.getAritmeticoAccess().getOp2ExpressaoParserRuleCall_1_1_0());
            	    					
            	    pushFollow(FOLLOW_16);
            	    lv_op2_2_0=ruleExpressao();

            	    state._fsp--;


            	    						if (current==null) {
            	    							current = createModelElementForParent(grammarAccess.getAritmeticoRule());
            	    						}
            	    						add(
            	    							current,
            	    							"op2",
            	    							lv_op2_2_0,
            	    							"org.xtext.sisprog.P2.Expressao");
            	    						afterParserOrEnumRuleCall();
            	    					

            	    }


            	    }


            	    }
            	    break;

            	default :
            	    break loop8;
                }
            } while (true);


            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleAritmetico"


    // $ANTLR start "entryRuleExpressao"
    // InternalP2.g:543:1: entryRuleExpressao returns [EObject current=null] : iv_ruleExpressao= ruleExpressao EOF ;
    public final EObject entryRuleExpressao() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleExpressao = null;


        try {
            // InternalP2.g:543:50: (iv_ruleExpressao= ruleExpressao EOF )
            // InternalP2.g:544:2: iv_ruleExpressao= ruleExpressao EOF
            {
             newCompositeNode(grammarAccess.getExpressaoRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleExpressao=ruleExpressao();

            state._fsp--;

             current =iv_ruleExpressao; 
            match(input,EOF,FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleExpressao"


    // $ANTLR start "ruleExpressao"
    // InternalP2.g:550:1: ruleExpressao returns [EObject current=null] : ( (otherlv_0= '(' this_Aritmetico_1= ruleAritmetico otherlv_2= ')' ) | this_Value_3= ruleValue ) ;
    public final EObject ruleExpressao() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token otherlv_2=null;
        EObject this_Aritmetico_1 = null;

        EObject this_Value_3 = null;



        	enterRule();

        try {
            // InternalP2.g:556:2: ( ( (otherlv_0= '(' this_Aritmetico_1= ruleAritmetico otherlv_2= ')' ) | this_Value_3= ruleValue ) )
            // InternalP2.g:557:2: ( (otherlv_0= '(' this_Aritmetico_1= ruleAritmetico otherlv_2= ')' ) | this_Value_3= ruleValue )
            {
            // InternalP2.g:557:2: ( (otherlv_0= '(' this_Aritmetico_1= ruleAritmetico otherlv_2= ')' ) | this_Value_3= ruleValue )
            int alt9=2;
            int LA9_0 = input.LA(1);

            if ( (LA9_0==15) ) {
                alt9=1;
            }
            else if ( ((LA9_0>=RULE_ID && LA9_0<=RULE_INT)) ) {
                alt9=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 9, 0, input);

                throw nvae;
            }
            switch (alt9) {
                case 1 :
                    // InternalP2.g:558:3: (otherlv_0= '(' this_Aritmetico_1= ruleAritmetico otherlv_2= ')' )
                    {
                    // InternalP2.g:558:3: (otherlv_0= '(' this_Aritmetico_1= ruleAritmetico otherlv_2= ')' )
                    // InternalP2.g:559:4: otherlv_0= '(' this_Aritmetico_1= ruleAritmetico otherlv_2= ')'
                    {
                    otherlv_0=(Token)match(input,15,FOLLOW_9); 

                    				newLeafNode(otherlv_0, grammarAccess.getExpressaoAccess().getLeftParenthesisKeyword_0_0());
                    			

                    				newCompositeNode(grammarAccess.getExpressaoAccess().getAritmeticoParserRuleCall_0_1());
                    			
                    pushFollow(FOLLOW_17);
                    this_Aritmetico_1=ruleAritmetico();

                    state._fsp--;


                    				current = this_Aritmetico_1;
                    				afterParserOrEnumRuleCall();
                    			
                    otherlv_2=(Token)match(input,16,FOLLOW_2); 

                    				newLeafNode(otherlv_2, grammarAccess.getExpressaoAccess().getRightParenthesisKeyword_0_2());
                    			

                    }


                    }
                    break;
                case 2 :
                    // InternalP2.g:577:3: this_Value_3= ruleValue
                    {

                    			newCompositeNode(grammarAccess.getExpressaoAccess().getValueParserRuleCall_1());
                    		
                    pushFollow(FOLLOW_2);
                    this_Value_3=ruleValue();

                    state._fsp--;


                    			current = this_Value_3;
                    			afterParserOrEnumRuleCall();
                    		

                    }
                    break;

            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleExpressao"


    // $ANTLR start "entryRuleDesvio"
    // InternalP2.g:589:1: entryRuleDesvio returns [EObject current=null] : iv_ruleDesvio= ruleDesvio EOF ;
    public final EObject entryRuleDesvio() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleDesvio = null;


        try {
            // InternalP2.g:589:47: (iv_ruleDesvio= ruleDesvio EOF )
            // InternalP2.g:590:2: iv_ruleDesvio= ruleDesvio EOF
            {
             newCompositeNode(grammarAccess.getDesvioRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleDesvio=ruleDesvio();

            state._fsp--;

             current =iv_ruleDesvio; 
            match(input,EOF,FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleDesvio"


    // $ANTLR start "ruleDesvio"
    // InternalP2.g:596:1: ruleDesvio returns [EObject current=null] : (otherlv_0= 'jump' ( (otherlv_1= RULE_ID ) ) ) ;
    public final EObject ruleDesvio() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token otherlv_1=null;


        	enterRule();

        try {
            // InternalP2.g:602:2: ( (otherlv_0= 'jump' ( (otherlv_1= RULE_ID ) ) ) )
            // InternalP2.g:603:2: (otherlv_0= 'jump' ( (otherlv_1= RULE_ID ) ) )
            {
            // InternalP2.g:603:2: (otherlv_0= 'jump' ( (otherlv_1= RULE_ID ) ) )
            // InternalP2.g:604:3: otherlv_0= 'jump' ( (otherlv_1= RULE_ID ) )
            {
            otherlv_0=(Token)match(input,21,FOLLOW_18); 

            			newLeafNode(otherlv_0, grammarAccess.getDesvioAccess().getJumpKeyword_0());
            		
            // InternalP2.g:608:3: ( (otherlv_1= RULE_ID ) )
            // InternalP2.g:609:4: (otherlv_1= RULE_ID )
            {
            // InternalP2.g:609:4: (otherlv_1= RULE_ID )
            // InternalP2.g:610:5: otherlv_1= RULE_ID
            {

            					if (current==null) {
            						current = createModelElement(grammarAccess.getDesvioRule());
            					}
            				
            otherlv_1=(Token)match(input,RULE_ID,FOLLOW_2); 

            					newLeafNode(otherlv_1, grammarAccess.getDesvioAccess().getRotinaFuncaoCrossReference_1_0());
            				

            }


            }


            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleDesvio"


    // $ANTLR start "entryRuleValue"
    // InternalP2.g:625:1: entryRuleValue returns [EObject current=null] : iv_ruleValue= ruleValue EOF ;
    public final EObject entryRuleValue() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleValue = null;


        try {
            // InternalP2.g:625:46: (iv_ruleValue= ruleValue EOF )
            // InternalP2.g:626:2: iv_ruleValue= ruleValue EOF
            {
             newCompositeNode(grammarAccess.getValueRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleValue=ruleValue();

            state._fsp--;

             current =iv_ruleValue; 
            match(input,EOF,FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleValue"


    // $ANTLR start "ruleValue"
    // InternalP2.g:632:1: ruleValue returns [EObject current=null] : (this_variavel_0= rulevariavel | ( () this_INT_2= RULE_INT ) ) ;
    public final EObject ruleValue() throws RecognitionException {
        EObject current = null;

        Token this_INT_2=null;
        EObject this_variavel_0 = null;



        	enterRule();

        try {
            // InternalP2.g:638:2: ( (this_variavel_0= rulevariavel | ( () this_INT_2= RULE_INT ) ) )
            // InternalP2.g:639:2: (this_variavel_0= rulevariavel | ( () this_INT_2= RULE_INT ) )
            {
            // InternalP2.g:639:2: (this_variavel_0= rulevariavel | ( () this_INT_2= RULE_INT ) )
            int alt10=2;
            int LA10_0 = input.LA(1);

            if ( (LA10_0==RULE_ID) ) {
                alt10=1;
            }
            else if ( (LA10_0==RULE_INT) ) {
                alt10=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 10, 0, input);

                throw nvae;
            }
            switch (alt10) {
                case 1 :
                    // InternalP2.g:640:3: this_variavel_0= rulevariavel
                    {

                    			newCompositeNode(grammarAccess.getValueAccess().getVariavelParserRuleCall_0());
                    		
                    pushFollow(FOLLOW_2);
                    this_variavel_0=rulevariavel();

                    state._fsp--;


                    			current = this_variavel_0;
                    			afterParserOrEnumRuleCall();
                    		

                    }
                    break;
                case 2 :
                    // InternalP2.g:649:3: ( () this_INT_2= RULE_INT )
                    {
                    // InternalP2.g:649:3: ( () this_INT_2= RULE_INT )
                    // InternalP2.g:650:4: () this_INT_2= RULE_INT
                    {
                    // InternalP2.g:650:4: ()
                    // InternalP2.g:651:5: 
                    {

                    					current = forceCreateModelElement(
                    						grammarAccess.getValueAccess().getValueAction_1_0(),
                    						current);
                    				

                    }

                    this_INT_2=(Token)match(input,RULE_INT,FOLLOW_2); 

                    				newLeafNode(this_INT_2, grammarAccess.getValueAccess().getINTTerminalRuleCall_1_1());
                    			

                    }


                    }
                    break;

            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleValue"


    // $ANTLR start "entryRulevariavel"
    // InternalP2.g:666:1: entryRulevariavel returns [EObject current=null] : iv_rulevariavel= rulevariavel EOF ;
    public final EObject entryRulevariavel() throws RecognitionException {
        EObject current = null;

        EObject iv_rulevariavel = null;


        try {
            // InternalP2.g:666:49: (iv_rulevariavel= rulevariavel EOF )
            // InternalP2.g:667:2: iv_rulevariavel= rulevariavel EOF
            {
             newCompositeNode(grammarAccess.getVariavelRule()); 
            pushFollow(FOLLOW_1);
            iv_rulevariavel=rulevariavel();

            state._fsp--;

             current =iv_rulevariavel; 
            match(input,EOF,FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRulevariavel"


    // $ANTLR start "rulevariavel"
    // InternalP2.g:673:1: rulevariavel returns [EObject current=null] : ( (lv_name_0_0= ruleRotulo ) ) ;
    public final EObject rulevariavel() throws RecognitionException {
        EObject current = null;

        AntlrDatatypeRuleToken lv_name_0_0 = null;



        	enterRule();

        try {
            // InternalP2.g:679:2: ( ( (lv_name_0_0= ruleRotulo ) ) )
            // InternalP2.g:680:2: ( (lv_name_0_0= ruleRotulo ) )
            {
            // InternalP2.g:680:2: ( (lv_name_0_0= ruleRotulo ) )
            // InternalP2.g:681:3: (lv_name_0_0= ruleRotulo )
            {
            // InternalP2.g:681:3: (lv_name_0_0= ruleRotulo )
            // InternalP2.g:682:4: lv_name_0_0= ruleRotulo
            {

            				newCompositeNode(grammarAccess.getVariavelAccess().getNameRotuloParserRuleCall_0());
            			
            pushFollow(FOLLOW_2);
            lv_name_0_0=ruleRotulo();

            state._fsp--;


            				if (current==null) {
            					current = createModelElementForParent(grammarAccess.getVariavelRule());
            				}
            				set(
            					current,
            					"name",
            					lv_name_0_0,
            					"org.xtext.sisprog.P2.Rotulo");
            				afterParserOrEnumRuleCall();
            			

            }


            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "rulevariavel"


    // $ANTLR start "entryRuleRotulo"
    // InternalP2.g:702:1: entryRuleRotulo returns [String current=null] : iv_ruleRotulo= ruleRotulo EOF ;
    public final String entryRuleRotulo() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleRotulo = null;


        try {
            // InternalP2.g:702:46: (iv_ruleRotulo= ruleRotulo EOF )
            // InternalP2.g:703:2: iv_ruleRotulo= ruleRotulo EOF
            {
             newCompositeNode(grammarAccess.getRotuloRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleRotulo=ruleRotulo();

            state._fsp--;

             current =iv_ruleRotulo.getText(); 
            match(input,EOF,FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleRotulo"


    // $ANTLR start "ruleRotulo"
    // InternalP2.g:709:1: ruleRotulo returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : this_ID_0= RULE_ID ;
    public final AntlrDatatypeRuleToken ruleRotulo() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token this_ID_0=null;


        	enterRule();

        try {
            // InternalP2.g:715:2: (this_ID_0= RULE_ID )
            // InternalP2.g:716:2: this_ID_0= RULE_ID
            {
            this_ID_0=(Token)match(input,RULE_ID,FOLLOW_2); 

            		current.merge(this_ID_0);
            	

            		newLeafNode(this_ID_0, grammarAccess.getRotuloAccess().getIDTerminalRuleCall());
            	

            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleRotulo"


    // $ANTLR start "entryRuleOperacao"
    // InternalP2.g:726:1: entryRuleOperacao returns [String current=null] : iv_ruleOperacao= ruleOperacao EOF ;
    public final String entryRuleOperacao() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleOperacao = null;


        try {
            // InternalP2.g:726:48: (iv_ruleOperacao= ruleOperacao EOF )
            // InternalP2.g:727:2: iv_ruleOperacao= ruleOperacao EOF
            {
             newCompositeNode(grammarAccess.getOperacaoRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleOperacao=ruleOperacao();

            state._fsp--;

             current =iv_ruleOperacao.getText(); 
            match(input,EOF,FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleOperacao"


    // $ANTLR start "ruleOperacao"
    // InternalP2.g:733:1: ruleOperacao returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (kw= '+' | kw= '-' | kw= '*' | kw= '/' | kw= '**' ) ;
    public final AntlrDatatypeRuleToken ruleOperacao() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token kw=null;


        	enterRule();

        try {
            // InternalP2.g:739:2: ( (kw= '+' | kw= '-' | kw= '*' | kw= '/' | kw= '**' ) )
            // InternalP2.g:740:2: (kw= '+' | kw= '-' | kw= '*' | kw= '/' | kw= '**' )
            {
            // InternalP2.g:740:2: (kw= '+' | kw= '-' | kw= '*' | kw= '/' | kw= '**' )
            int alt11=5;
            switch ( input.LA(1) ) {
            case 22:
                {
                alt11=1;
                }
                break;
            case 23:
                {
                alt11=2;
                }
                break;
            case 24:
                {
                alt11=3;
                }
                break;
            case 25:
                {
                alt11=4;
                }
                break;
            case 26:
                {
                alt11=5;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 11, 0, input);

                throw nvae;
            }

            switch (alt11) {
                case 1 :
                    // InternalP2.g:741:3: kw= '+'
                    {
                    kw=(Token)match(input,22,FOLLOW_2); 

                    			current.merge(kw);
                    			newLeafNode(kw, grammarAccess.getOperacaoAccess().getPlusSignKeyword_0());
                    		

                    }
                    break;
                case 2 :
                    // InternalP2.g:747:3: kw= '-'
                    {
                    kw=(Token)match(input,23,FOLLOW_2); 

                    			current.merge(kw);
                    			newLeafNode(kw, grammarAccess.getOperacaoAccess().getHyphenMinusKeyword_1());
                    		

                    }
                    break;
                case 3 :
                    // InternalP2.g:753:3: kw= '*'
                    {
                    kw=(Token)match(input,24,FOLLOW_2); 

                    			current.merge(kw);
                    			newLeafNode(kw, grammarAccess.getOperacaoAccess().getAsteriskKeyword_2());
                    		

                    }
                    break;
                case 4 :
                    // InternalP2.g:759:3: kw= '/'
                    {
                    kw=(Token)match(input,25,FOLLOW_2); 

                    			current.merge(kw);
                    			newLeafNode(kw, grammarAccess.getOperacaoAccess().getSolidusKeyword_3());
                    		

                    }
                    break;
                case 5 :
                    // InternalP2.g:765:3: kw= '**'
                    {
                    kw=(Token)match(input,26,FOLLOW_2); 

                    			current.merge(kw);
                    			newLeafNode(kw, grammarAccess.getOperacaoAccess().getAsteriskAsteriskKeyword_4());
                    		

                    }
                    break;

            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleOperacao"


    // $ANTLR start "entryRulecomparador"
    // InternalP2.g:774:1: entryRulecomparador returns [String current=null] : iv_rulecomparador= rulecomparador EOF ;
    public final String entryRulecomparador() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_rulecomparador = null;


        try {
            // InternalP2.g:774:50: (iv_rulecomparador= rulecomparador EOF )
            // InternalP2.g:775:2: iv_rulecomparador= rulecomparador EOF
            {
             newCompositeNode(grammarAccess.getComparadorRule()); 
            pushFollow(FOLLOW_1);
            iv_rulecomparador=rulecomparador();

            state._fsp--;

             current =iv_rulecomparador.getText(); 
            match(input,EOF,FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRulecomparador"


    // $ANTLR start "rulecomparador"
    // InternalP2.g:781:1: rulecomparador returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (kw= '==' | kw= '!=' | kw= '<' | kw= '>' | kw= '<=' | kw= '>=' ) ;
    public final AntlrDatatypeRuleToken rulecomparador() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token kw=null;


        	enterRule();

        try {
            // InternalP2.g:787:2: ( (kw= '==' | kw= '!=' | kw= '<' | kw= '>' | kw= '<=' | kw= '>=' ) )
            // InternalP2.g:788:2: (kw= '==' | kw= '!=' | kw= '<' | kw= '>' | kw= '<=' | kw= '>=' )
            {
            // InternalP2.g:788:2: (kw= '==' | kw= '!=' | kw= '<' | kw= '>' | kw= '<=' | kw= '>=' )
            int alt12=6;
            switch ( input.LA(1) ) {
            case 27:
                {
                alt12=1;
                }
                break;
            case 28:
                {
                alt12=2;
                }
                break;
            case 29:
                {
                alt12=3;
                }
                break;
            case 30:
                {
                alt12=4;
                }
                break;
            case 31:
                {
                alt12=5;
                }
                break;
            case 32:
                {
                alt12=6;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 12, 0, input);

                throw nvae;
            }

            switch (alt12) {
                case 1 :
                    // InternalP2.g:789:3: kw= '=='
                    {
                    kw=(Token)match(input,27,FOLLOW_2); 

                    			current.merge(kw);
                    			newLeafNode(kw, grammarAccess.getComparadorAccess().getEqualsSignEqualsSignKeyword_0());
                    		

                    }
                    break;
                case 2 :
                    // InternalP2.g:795:3: kw= '!='
                    {
                    kw=(Token)match(input,28,FOLLOW_2); 

                    			current.merge(kw);
                    			newLeafNode(kw, grammarAccess.getComparadorAccess().getExclamationMarkEqualsSignKeyword_1());
                    		

                    }
                    break;
                case 3 :
                    // InternalP2.g:801:3: kw= '<'
                    {
                    kw=(Token)match(input,29,FOLLOW_2); 

                    			current.merge(kw);
                    			newLeafNode(kw, grammarAccess.getComparadorAccess().getLessThanSignKeyword_2());
                    		

                    }
                    break;
                case 4 :
                    // InternalP2.g:807:3: kw= '>'
                    {
                    kw=(Token)match(input,30,FOLLOW_2); 

                    			current.merge(kw);
                    			newLeafNode(kw, grammarAccess.getComparadorAccess().getGreaterThanSignKeyword_3());
                    		

                    }
                    break;
                case 5 :
                    // InternalP2.g:813:3: kw= '<='
                    {
                    kw=(Token)match(input,31,FOLLOW_2); 

                    			current.merge(kw);
                    			newLeafNode(kw, grammarAccess.getComparadorAccess().getLessThanSignEqualsSignKeyword_4());
                    		

                    }
                    break;
                case 6 :
                    // InternalP2.g:819:3: kw= '>='
                    {
                    kw=(Token)match(input,32,FOLLOW_2); 

                    			current.merge(kw);
                    			newLeafNode(kw, grammarAccess.getComparadorAccess().getGreaterThanSignEqualsSignKeyword_5());
                    		

                    }
                    break;

            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "rulecomparador"

    // Delegated rules


 

    public static final BitSet FOLLOW_1 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_2 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_3 = new BitSet(new long[]{0x0000000000000810L});
    public static final BitSet FOLLOW_4 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_5 = new BitSet(new long[]{0x0000000000204810L});
    public static final BitSet FOLLOW_6 = new BitSet(new long[]{0x0000000000204812L});
    public static final BitSet FOLLOW_7 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_8 = new BitSet(new long[]{0x0000000000008000L});
    public static final BitSet FOLLOW_9 = new BitSet(new long[]{0x0000000000008830L});
    public static final BitSet FOLLOW_10 = new BitSet(new long[]{0x0000000000018830L});
    public static final BitSet FOLLOW_11 = new BitSet(new long[]{0x0000000000020000L});
    public static final BitSet FOLLOW_12 = new BitSet(new long[]{0x0000000000244810L});
    public static final BitSet FOLLOW_13 = new BitSet(new long[]{0x0000000000080002L});
    public static final BitSet FOLLOW_14 = new BitSet(new long[]{0x00000001F8000000L});
    public static final BitSet FOLLOW_15 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_16 = new BitSet(new long[]{0x0000000007C00002L});
    public static final BitSet FOLLOW_17 = new BitSet(new long[]{0x0000000000010000L});
    public static final BitSet FOLLOW_18 = new BitSet(new long[]{0x0000000000000010L});

}