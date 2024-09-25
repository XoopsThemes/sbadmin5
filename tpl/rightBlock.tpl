<{if $xoBlocks.canvas_right}>
<div class="container-fluid">
    <div class="row">
        <{foreach item=block from=$xoBlocks.canvas_right}>
        <div class="col-xl-12">
            <div class="card mb-4">
                <{if $block.title}>
                <div class="card-header">
                    <i class="fa fa-h-square mr-1"></i>
                    <{$block.title}>
                </div>
                <{/if}>
                <div class="card-body text-justify px-2"><{$block.content}></div>
            </div>
        </div>

        <{/foreach}>
    </div>
</div>
<{/if}>
