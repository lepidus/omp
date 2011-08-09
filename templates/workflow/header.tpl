{**
 * templates/workflow/header.tpl
 *
 * Copyright (c) 2003-2011 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Header that contains details about the submission
 *}

<div class="pkp_submissionHeader">
	<div class="pkp_submissionHeaderTop">
		{include file="common/submissionHeader.tpl" stageId=$stageId monograph=$monograph}
		<div class="pkp_linkActions">
			{include file="linkAction/linkAction.tpl" action=$editMetadataAction}
			{include file="linkAction/linkAction.tpl" action=$submissionInformationCentreAction}
		</div>
	</div>

	<div class="pkp_helpers_clear"></div>

	{url|assign:timelineUrl router=$smarty.const.ROUTE_COMPONENT component="timeline.TimelineHandler" op="index" monographId=$monograph->getId() escape=false}
	{load_url_in_div id="pkp_submissionTimeline" url="$timelineUrl"}

	<div class="pkp_helpers_clear"></div>

	<div class="pkp_workflow_headerBottom">
		<div class="pkp_workflow_headerUserInfo">
			{include file="controllers/notification/inPlaceNotification.tpl" notificationId="workflowNotification" requestOptions=$workflowNotificationRequestOptions}
		</div>
		<div class="pkp_workflow_headerStageParticipants">
			{url|assign:stageParticipantGridUrl router=$smarty.const.ROUTE_COMPONENT component="grid.users.stageParticipant.StageParticipantGridHandler" op="fetchGrid" monographId=$monograph->getId() stageId=$stageId escape=false}
			{load_url_in_div id="stageParticipantGridContainer" url="$stageParticipantGridUrl"}
		</div>
	</div>
</div>
<div class="pkp_helpers_clear"></div>
