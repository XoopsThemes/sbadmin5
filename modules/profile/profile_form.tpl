<{$xoForm.javascript}>
<form id="<{$xoForm.name}>" name="<{$xoForm.name}>" action="<{$xoForm.action}>" method="<{$xoForm.method}>" <{$xoForm.extra}> >
	
		<{foreach item=element from=$xoForm.elements}>
            <{if !$element.hidden}>
			<div class="form-group">
				<label>
					<div class='xoops-form-element-caption<{if $element.required}>-required<{/if}>'>
						<span class='caption-text'><{$element.caption}></span>
						<span class='caption-marker'>*</span>
					</div>
				</label>	
				<{$element.body}>
            </div>				
			<{/if}>
			<{if $element.description != ""}>
				<small id="passwordHelpBlock" class="form-text text-muted">
					<{$element.description}>
				</small>
			<{/if}>
        <{/foreach}>

	<{foreach item=element from=$xoForm.elements}>
        <{if $element.hidden}>
            <{$element.body}>
        <{/if}>
    <{/foreach}>
</form>

