/*
 * generated by Xtext 2.22.0
 */
grammar InternalSCDsl;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.sctest.scdsl.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.sctest.scdsl.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.sctest.scdsl.services.SCDslGrammarAccess;

}

@parser::members {

 	private SCDslGrammarAccess grammarAccess;

    public InternalSCDslParser(TokenStream input, SCDslGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "SContract";
   	}

   	@Override
   	protected SCDslGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleSContract
entryRuleSContract returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSContractRule()); }
	iv_ruleSContract=ruleSContract
	{ $current=$iv_ruleSContract.current; }
	EOF;

// Rule SContract
ruleSContract returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Contract'
		{
			newLeafNode(otherlv_0, grammarAccess.getSContractAccess().getContractKeyword_0());
		}
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getSContractAccess().getColonKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getSContractAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSContractRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_3='Platform'
		{
			newLeafNode(otherlv_3, grammarAccess.getSContractAccess().getPlatformKeyword_3());
		}
		otherlv_4=':'
		{
			newLeafNode(otherlv_4, grammarAccess.getSContractAccess().getColonKeyword_4());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getSContractAccess().getPlatformTargetPlatformEnumRuleCall_5_0());
				}
				lv_platform_5_0=ruleTargetPlatform
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSContractRule());
					}
					set(
						$current,
						"platform",
						lv_platform_5_0,
						"org.sctest.scdsl.SCDsl.TargetPlatform");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getSContractAccess().getElementElementParserRuleCall_6_0());
				}
				lv_element_6_0=ruleElement
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSContractRule());
					}
					add(
						$current,
						"element",
						lv_element_6_0,
						"org.sctest.scdsl.SCDsl.Element");
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleElement
entryRuleElement returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getElementRule()); }
	iv_ruleElement=ruleElement
	{ $current=$iv_ruleElement.current; }
	EOF;

// Rule Element
ruleElement returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getElementAccess().getParticipantParserRuleCall_0_0());
			}
			this_Participant_0=ruleParticipant
			{
				$current = $this_Participant_0.current;
				afterParserOrEnumRuleCall();
			}
			    |
			{
				newCompositeNode(grammarAccess.getElementAccess().getAssetParserRuleCall_0_1());
			}
			this_Asset_1=ruleAsset
			{
				$current = $this_Asset_1.current;
				afterParserOrEnumRuleCall();
			}
			    |
			{
				newCompositeNode(grammarAccess.getElementAccess().getTransactionParserRuleCall_0_2());
			}
			this_Transaction_2=ruleTransaction
			{
				$current = $this_Transaction_2.current;
				afterParserOrEnumRuleCall();
			}
		)
		otherlv_3='{'
		{
			newLeafNode(otherlv_3, grammarAccess.getElementAccess().getLeftCurlyBracketKeyword_1());
		}
		otherlv_4='Name'
		{
			newLeafNode(otherlv_4, grammarAccess.getElementAccess().getNameKeyword_2());
		}
		otherlv_5=':'
		{
			newLeafNode(otherlv_5, grammarAccess.getElementAccess().getColonKeyword_3());
		}
		(
			(
				lv_name_6_0=RULE_ID
				{
					newLeafNode(lv_name_6_0, grammarAccess.getElementAccess().getNameIDTerminalRuleCall_4_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getElementRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_6_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_7='List'
		{
			newLeafNode(otherlv_7, grammarAccess.getElementAccess().getListKeyword_5());
		}
		otherlv_8=':'
		{
			newLeafNode(otherlv_8, grammarAccess.getElementAccess().getColonKeyword_6());
		}
		(
			(
				lv_list_9_0=RULE_ID
				{
					newLeafNode(lv_list_9_0, grammarAccess.getElementAccess().getListIDTerminalRuleCall_7_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getElementRule());
					}
					setWithLastConsumed(
						$current,
						"list",
						lv_list_9_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getElementAccess().getRelationshipRelationshipParserRuleCall_8_0());
				}
				lv_relationship_10_0=ruleRelationship
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getElementRule());
					}
					add(
						$current,
						"relationship",
						lv_relationship_10_0,
						"org.sctest.scdsl.SCDsl.Relationship");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		(
			(
				{
					newCompositeNode(grammarAccess.getElementAccess().getCompositeelementCompositeElementParserRuleCall_9_0());
				}
				lv_compositeelement_11_0=ruleCompositeElement
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getElementRule());
					}
					add(
						$current,
						"compositeelement",
						lv_compositeelement_11_0,
						"org.sctest.scdsl.SCDsl.CompositeElement");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		(
			(
				{
					newCompositeNode(grammarAccess.getElementAccess().getParametersParameterParserRuleCall_10_0());
				}
				lv_parameters_12_0=ruleParameter
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getElementRule());
					}
					add(
						$current,
						"parameters",
						lv_parameters_12_0,
						"org.sctest.scdsl.SCDsl.Parameter");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_13='}'
		{
			newLeafNode(otherlv_13, grammarAccess.getElementAccess().getRightCurlyBracketKeyword_11());
		}
	)
;

// Entry rule entryRuleCompositeElement
entryRuleCompositeElement returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCompositeElementRule()); }
	iv_ruleCompositeElement=ruleCompositeElement
	{ $current=$iv_ruleCompositeElement.current; }
	EOF;

// Rule CompositeElement
ruleCompositeElement returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Name'
		{
			newLeafNode(otherlv_0, grammarAccess.getCompositeElementAccess().getNameKeyword_0());
		}
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getCompositeElementAccess().getColonKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getCompositeElementAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getCompositeElementRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_3='List'
		{
			newLeafNode(otherlv_3, grammarAccess.getCompositeElementAccess().getListKeyword_3());
		}
		otherlv_4=':'
		{
			newLeafNode(otherlv_4, grammarAccess.getCompositeElementAccess().getColonKeyword_4());
		}
		(
			(
				lv_list_5_0=RULE_ID
				{
					newLeafNode(lv_list_5_0, grammarAccess.getCompositeElementAccess().getListIDTerminalRuleCall_5_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getCompositeElementRule());
					}
					setWithLastConsumed(
						$current,
						"list",
						lv_list_5_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleParticipant
entryRuleParticipant returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getParticipantRule()); }
	iv_ruleParticipant=ruleParticipant
	{ $current=$iv_ruleParticipant.current; }
	EOF;

// Rule Participant
ruleParticipant returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getParticipantAccess().getParticipantAction_0(),
					$current);
			}
		)
		otherlv_1='Participant'
		{
			newLeafNode(otherlv_1, grammarAccess.getParticipantAccess().getParticipantKeyword_1());
		}
		(
			otherlv_2='Creator'
			{
				newLeafNode(otherlv_2, grammarAccess.getParticipantAccess().getCreatorKeyword_2_0());
			}
			otherlv_3=':'
			{
				newLeafNode(otherlv_3, grammarAccess.getParticipantAccess().getColonKeyword_2_1());
			}
			(
				(
					lv_creator_4_0='T'
					{
						newLeafNode(lv_creator_4_0, grammarAccess.getParticipantAccess().getCreatorTKeyword_2_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getParticipantRule());
						}
						setWithLastConsumed($current, "creator", lv_creator_4_0 != null, "T");
					}
				)
			)
		)?
	)
;

// Entry rule entryRuleAsset
entryRuleAsset returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAssetRule()); }
	iv_ruleAsset=ruleAsset
	{ $current=$iv_ruleAsset.current; }
	EOF;

// Rule Asset
ruleAsset returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Asset'
		{
			newLeafNode(otherlv_0, grammarAccess.getAssetAccess().getAssetKeyword_0());
		}
		otherlv_1='Type'
		{
			newLeafNode(otherlv_1, grammarAccess.getAssetAccess().getTypeKeyword_1());
		}
		otherlv_2=':'
		{
			newLeafNode(otherlv_2, grammarAccess.getAssetAccess().getColonKeyword_2());
		}
		(
			(
				lv_type_3_0=RULE_ID
				{
					newLeafNode(lv_type_3_0, grammarAccess.getAssetAccess().getTypeIDTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAssetRule());
					}
					setWithLastConsumed(
						$current,
						"type",
						lv_type_3_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleParameter
entryRuleParameter returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getParameterRule()); }
	iv_ruleParameter=ruleParameter
	{ $current=$iv_ruleParameter.current; }
	EOF;

// Rule Parameter
ruleParameter returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Parameter'
		{
			newLeafNode(otherlv_0, grammarAccess.getParameterAccess().getParameterKeyword_0());
		}
		otherlv_1='{'
		{
			newLeafNode(otherlv_1, grammarAccess.getParameterAccess().getLeftCurlyBracketKeyword_1());
		}
		otherlv_2='Name'
		{
			newLeafNode(otherlv_2, grammarAccess.getParameterAccess().getNameKeyword_2());
		}
		otherlv_3=':'
		{
			newLeafNode(otherlv_3, grammarAccess.getParameterAccess().getColonKeyword_3());
		}
		(
			(
				lv_name_4_0=RULE_ID
				{
					newLeafNode(lv_name_4_0, grammarAccess.getParameterAccess().getNameIDTerminalRuleCall_4_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getParameterRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_4_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_5='Type'
		{
			newLeafNode(otherlv_5, grammarAccess.getParameterAccess().getTypeKeyword_5());
		}
		otherlv_6=':'
		{
			newLeafNode(otherlv_6, grammarAccess.getParameterAccess().getColonKeyword_6());
		}
		(
			(
				lv_type_7_0=RULE_ID
				{
					newLeafNode(lv_type_7_0, grammarAccess.getParameterAccess().getTypeIDTerminalRuleCall_7_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getParameterRule());
					}
					setWithLastConsumed(
						$current,
						"type",
						lv_type_7_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			otherlv_8='Identifier'
			{
				newLeafNode(otherlv_8, grammarAccess.getParameterAccess().getIdentifierKeyword_8_0());
			}
			otherlv_9=':'
			{
				newLeafNode(otherlv_9, grammarAccess.getParameterAccess().getColonKeyword_8_1());
			}
			(
				(
					lv_identifier_10_0='T'
					{
						newLeafNode(lv_identifier_10_0, grammarAccess.getParameterAccess().getIdentifierTKeyword_8_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getParameterRule());
						}
						setWithLastConsumed($current, "identifier", lv_identifier_10_0 != null, "T");
					}
				)
			)
		)?
		otherlv_11='}'
		{
			newLeafNode(otherlv_11, grammarAccess.getParameterAccess().getRightCurlyBracketKeyword_9());
		}
	)
;

// Entry rule entryRuleTransaction
entryRuleTransaction returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTransactionRule()); }
	iv_ruleTransaction=ruleTransaction
	{ $current=$iv_ruleTransaction.current; }
	EOF;

// Rule Transaction
ruleTransaction returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getTransactionAccess().getTransactionAction_0(),
					$current);
			}
		)
		otherlv_1='Transaction'
		{
			newLeafNode(otherlv_1, grammarAccess.getTransactionAccess().getTransactionKeyword_1());
		}
		(
			otherlv_2='Mostrar'
			{
				newLeafNode(otherlv_2, grammarAccess.getTransactionAccess().getMostrarKeyword_2_0());
			}
			otherlv_3=':'
			{
				newLeafNode(otherlv_3, grammarAccess.getTransactionAccess().getColonKeyword_2_1());
			}
			(
				(
					lv_mostrar_4_0='T'
					{
						newLeafNode(lv_mostrar_4_0, grammarAccess.getTransactionAccess().getMostrarTKeyword_2_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getTransactionRule());
						}
						setWithLastConsumed($current, "mostrar", lv_mostrar_4_0 != null, "T");
					}
				)
			)
		)?
		otherlv_5='{'
		{
			newLeafNode(otherlv_5, grammarAccess.getTransactionAccess().getLeftCurlyBracketKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getTransactionAccess().getConditionConditionParserRuleCall_4_0());
				}
				lv_condition_6_0=ruleCondition
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTransactionRule());
					}
					add(
						$current,
						"condition",
						lv_condition_6_0,
						"org.sctest.scdsl.SCDsl.Condition");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_7='}'
		{
			newLeafNode(otherlv_7, grammarAccess.getTransactionAccess().getRightCurlyBracketKeyword_5());
		}
	)
;

// Entry rule entryRuleCondition
entryRuleCondition returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getConditionRule()); }
	iv_ruleCondition=ruleCondition
	{ $current=$iv_ruleCondition.current; }
	EOF;

// Rule Condition
ruleCondition returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Condition'
		{
			newLeafNode(otherlv_0, grammarAccess.getConditionAccess().getConditionKeyword_0());
		}
		otherlv_1='{'
		{
			newLeafNode(otherlv_1, grammarAccess.getConditionAccess().getLeftCurlyBracketKeyword_1());
		}
		otherlv_2='Name'
		{
			newLeafNode(otherlv_2, grammarAccess.getConditionAccess().getNameKeyword_2());
		}
		otherlv_3=':'
		{
			newLeafNode(otherlv_3, grammarAccess.getConditionAccess().getColonKeyword_3());
		}
		(
			(
				lv_name_4_0=RULE_ID
				{
					newLeafNode(lv_name_4_0, grammarAccess.getConditionAccess().getNameIDTerminalRuleCall_4_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getConditionRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_4_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_5='Condition'
		{
			newLeafNode(otherlv_5, grammarAccess.getConditionAccess().getConditionKeyword_5());
		}
		otherlv_6=':'
		{
			newLeafNode(otherlv_6, grammarAccess.getConditionAccess().getColonKeyword_6());
		}
		(
			(
				lv_condition_7_0=RULE_ID
				{
					newLeafNode(lv_condition_7_0, grammarAccess.getConditionAccess().getConditionIDTerminalRuleCall_7_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getConditionRule());
					}
					setWithLastConsumed(
						$current,
						"condition",
						lv_condition_7_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_8='ConditionType'
		{
			newLeafNode(otherlv_8, grammarAccess.getConditionAccess().getConditionTypeKeyword_8());
		}
		otherlv_9=':'
		{
			newLeafNode(otherlv_9, grammarAccess.getConditionAccess().getColonKeyword_9());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getConditionAccess().getConditionTypeConditionTypesEnumRuleCall_10_0());
				}
				lv_conditionType_10_0=ruleConditionTypes
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getConditionRule());
					}
					set(
						$current,
						"conditionType",
						lv_conditionType_10_0,
						"org.sctest.scdsl.SCDsl.ConditionTypes");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_11='}'
		{
			newLeafNode(otherlv_11, grammarAccess.getConditionAccess().getRightCurlyBracketKeyword_11());
		}
	)
;

// Entry rule entryRuleRelationship
entryRuleRelationship returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRelationshipRule()); }
	iv_ruleRelationship=ruleRelationship
	{ $current=$iv_ruleRelationship.current; }
	EOF;

// Rule Relationship
ruleRelationship returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Relationship'
		{
			newLeafNode(otherlv_0, grammarAccess.getRelationshipAccess().getRelationshipKeyword_0());
		}
		(
			{
				newCompositeNode(grammarAccess.getRelationshipAccess().getTranRelParserRuleCall_1_0());
			}
			this_TranRel_1=ruleTranRel
			{
				$current = $this_TranRel_1.current;
				afterParserOrEnumRuleCall();
			}
			    |
			{
				newCompositeNode(grammarAccess.getRelationshipAccess().getAssetRelParserRuleCall_1_1());
			}
			this_AssetRel_2=ruleAssetRel
			{
				$current = $this_AssetRel_2.current;
				afterParserOrEnumRuleCall();
			}
		)
		otherlv_3='{'
		{
			newLeafNode(otherlv_3, grammarAccess.getRelationshipAccess().getLeftCurlyBracketKeyword_2());
		}
		otherlv_4='Name'
		{
			newLeafNode(otherlv_4, grammarAccess.getRelationshipAccess().getNameKeyword_3());
		}
		otherlv_5=':'
		{
			newLeafNode(otherlv_5, grammarAccess.getRelationshipAccess().getColonKeyword_4());
		}
		(
			(
				lv_name_6_0=RULE_ID
				{
					newLeafNode(lv_name_6_0, grammarAccess.getRelationshipAccess().getNameIDTerminalRuleCall_5_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getRelationshipRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_6_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_7='From'
		{
			newLeafNode(otherlv_7, grammarAccess.getRelationshipAccess().getFromKeyword_6());
		}
		otherlv_8=':'
		{
			newLeafNode(otherlv_8, grammarAccess.getRelationshipAccess().getColonKeyword_7());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getRelationshipRule());
					}
				}
				otherlv_9=RULE_ID
				{
					newLeafNode(otherlv_9, grammarAccess.getRelationshipAccess().getFromElementCrossReference_8_0());
				}
			)
		)
		otherlv_10='To'
		{
			newLeafNode(otherlv_10, grammarAccess.getRelationshipAccess().getToKeyword_9());
		}
		otherlv_11=':'
		{
			newLeafNode(otherlv_11, grammarAccess.getRelationshipAccess().getColonKeyword_10());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getRelationshipRule());
					}
				}
				otherlv_12=RULE_ID
				{
					newLeafNode(otherlv_12, grammarAccess.getRelationshipAccess().getToElementCrossReference_11_0());
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getRelationshipAccess().getEventEventParserRuleCall_12_0());
				}
				lv_event_13_0=ruleEvent
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getRelationshipRule());
					}
					add(
						$current,
						"event",
						lv_event_13_0,
						"org.sctest.scdsl.SCDsl.Event");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_14='}'
		{
			newLeafNode(otherlv_14, grammarAccess.getRelationshipAccess().getRightCurlyBracketKeyword_13());
		}
	)
;

// Entry rule entryRuleEvent
entryRuleEvent returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getEventRule()); }
	iv_ruleEvent=ruleEvent
	{ $current=$iv_ruleEvent.current; }
	EOF;

// Rule Event
ruleEvent returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Event'
		{
			newLeafNode(otherlv_0, grammarAccess.getEventAccess().getEventKeyword_0());
		}
		otherlv_1='{'
		{
			newLeafNode(otherlv_1, grammarAccess.getEventAccess().getLeftCurlyBracketKeyword_1());
		}
		otherlv_2='Description'
		{
			newLeafNode(otherlv_2, grammarAccess.getEventAccess().getDescriptionKeyword_2());
		}
		otherlv_3=':'
		{
			newLeafNode(otherlv_3, grammarAccess.getEventAccess().getColonKeyword_3());
		}
		(
			(
				lv_description_4_0=RULE_ID
				{
					newLeafNode(lv_description_4_0, grammarAccess.getEventAccess().getDescriptionIDTerminalRuleCall_4_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getEventRule());
					}
					setWithLastConsumed(
						$current,
						"description",
						lv_description_4_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_5='Name'
		{
			newLeafNode(otherlv_5, grammarAccess.getEventAccess().getNameKeyword_5());
		}
		otherlv_6=':'
		{
			newLeafNode(otherlv_6, grammarAccess.getEventAccess().getColonKeyword_6());
		}
		(
			(
				lv_name_7_0=RULE_ID
				{
					newLeafNode(lv_name_7_0, grammarAccess.getEventAccess().getNameIDTerminalRuleCall_7_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getEventRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_7_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_8='}'
		{
			newLeafNode(otherlv_8, grammarAccess.getEventAccess().getRightCurlyBracketKeyword_8());
		}
	)
;

// Entry rule entryRuleTranRel
entryRuleTranRel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTranRelRule()); }
	iv_ruleTranRel=ruleTranRel
	{ $current=$iv_ruleTranRel.current; }
	EOF;

// Rule TranRel
ruleTranRel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getTranRelAccess().getTranRelAction_0(),
					$current);
			}
		)
		otherlv_1='TranRel'
		{
			newLeafNode(otherlv_1, grammarAccess.getTranRelAccess().getTranRelKeyword_1());
		}
		(
			otherlv_2='Selected'
			{
				newLeafNode(otherlv_2, grammarAccess.getTranRelAccess().getSelectedKeyword_2_0());
			}
			otherlv_3=':'
			{
				newLeafNode(otherlv_3, grammarAccess.getTranRelAccess().getColonKeyword_2_1());
			}
			(
				(
					lv_selected_4_0='T'
					{
						newLeafNode(lv_selected_4_0, grammarAccess.getTranRelAccess().getSelectedTKeyword_2_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getTranRelRule());
						}
						setWithLastConsumed($current, "selected", lv_selected_4_0 != null, "T");
					}
				)
			)
		)?
	)
;

// Entry rule entryRuleAssetRel
entryRuleAssetRel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAssetRelRule()); }
	iv_ruleAssetRel=ruleAssetRel
	{ $current=$iv_ruleAssetRel.current; }
	EOF;

// Rule AssetRel
ruleAssetRel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getAssetRelAccess().getAssetRelAction_0(),
					$current);
			}
		)
		otherlv_1='AssetRel'
		{
			newLeafNode(otherlv_1, grammarAccess.getAssetRelAccess().getAssetRelKeyword_1());
		}
		(
			otherlv_2='Create'
			{
				newLeafNode(otherlv_2, grammarAccess.getAssetRelAccess().getCreateKeyword_2_0());
			}
			otherlv_3=':'
			{
				newLeafNode(otherlv_3, grammarAccess.getAssetRelAccess().getColonKeyword_2_1());
			}
			(
				(
					lv_create_4_0='T'
					{
						newLeafNode(lv_create_4_0, grammarAccess.getAssetRelAccess().getCreateTKeyword_2_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAssetRelRule());
						}
						setWithLastConsumed($current, "create", lv_create_4_0 != null, "T");
					}
				)
			)
		)?
		(
			otherlv_5='Read'
			{
				newLeafNode(otherlv_5, grammarAccess.getAssetRelAccess().getReadKeyword_3_0());
			}
			otherlv_6=':'
			{
				newLeafNode(otherlv_6, grammarAccess.getAssetRelAccess().getColonKeyword_3_1());
			}
			(
				(
					lv_read_7_0='T'
					{
						newLeafNode(lv_read_7_0, grammarAccess.getAssetRelAccess().getReadTKeyword_3_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAssetRelRule());
						}
						setWithLastConsumed($current, "read", lv_read_7_0 != null, "T");
					}
				)
			)
		)?
		(
			otherlv_8='Update'
			{
				newLeafNode(otherlv_8, grammarAccess.getAssetRelAccess().getUpdateKeyword_4_0());
			}
			otherlv_9=':'
			{
				newLeafNode(otherlv_9, grammarAccess.getAssetRelAccess().getColonKeyword_4_1());
			}
			(
				(
					lv_update_10_0='T'
					{
						newLeafNode(lv_update_10_0, grammarAccess.getAssetRelAccess().getUpdateTKeyword_4_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAssetRelRule());
						}
						setWithLastConsumed($current, "update", lv_update_10_0 != null, "T");
					}
				)
			)
		)?
		(
			otherlv_11='Delete'
			{
				newLeafNode(otherlv_11, grammarAccess.getAssetRelAccess().getDeleteKeyword_5_0());
			}
			otherlv_12=':'
			{
				newLeafNode(otherlv_12, grammarAccess.getAssetRelAccess().getColonKeyword_5_1());
			}
			(
				(
					lv_delete_13_0='T'
					{
						newLeafNode(lv_delete_13_0, grammarAccess.getAssetRelAccess().getDeleteTKeyword_5_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAssetRelRule());
						}
						setWithLastConsumed($current, "delete", lv_delete_13_0 != null, "T");
					}
				)
			)
		)?
		(
			otherlv_14='All'
			{
				newLeafNode(otherlv_14, grammarAccess.getAssetRelAccess().getAllKeyword_6_0());
			}
			otherlv_15=':'
			{
				newLeafNode(otherlv_15, grammarAccess.getAssetRelAccess().getColonKeyword_6_1());
			}
			(
				(
					lv_all_16_0='T'
					{
						newLeafNode(lv_all_16_0, grammarAccess.getAssetRelAccess().getAllTKeyword_6_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAssetRelRule());
						}
						setWithLastConsumed($current, "all", lv_all_16_0 != null, "T");
					}
				)
			)
		)?
	)
;

// Rule TargetPlatform
ruleTargetPlatform returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='IBM'
			{
				$current = grammarAccess.getTargetPlatformAccess().getIBMEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getTargetPlatformAccess().getIBMEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='Azure'
			{
				$current = grammarAccess.getTargetPlatformAccess().getAzureEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getTargetPlatformAccess().getAzureEnumLiteralDeclaration_1());
			}
		)
		    |
		(
			enumLiteral_2='Solidity'
			{
				$current = grammarAccess.getTargetPlatformAccess().getSolidityEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_2, grammarAccess.getTargetPlatformAccess().getSolidityEnumLiteralDeclaration_2());
			}
		)
	)
;

// Rule ConditionTypes
ruleConditionTypes returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='Pre'
			{
				$current = grammarAccess.getConditionTypesAccess().getPreEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getConditionTypesAccess().getPreEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='Post'
			{
				$current = grammarAccess.getConditionTypesAccess().getPostEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getConditionTypesAccess().getPostEnumLiteralDeclaration_1());
			}
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
