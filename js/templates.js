<script id="instruction" type="text/template">
 <div id="spy" class="container-fluid" data-spy="scroll" data-target="#navbar" data-offset="200">
	  <div class="row-fluid">
	    <div class="span12 hero-unit">
	    	<div id="sampleArea"></div>
					{{#instruction}}
						<h1>{{name}}</h1>
						<p>{{description}}</p>
					{{/instruction}}
	    </div>
    </div>
  </div>
  </script>
  <script id="step" type="text/template">
    <div id="step{{index}}" class="row-fluid stepRow">
    	<div class="offset1 spacer"><div class="span8">
    		<h2><span class="step">Step {{index}}:</span> {{0.name}}</h2>
    			<p>{{0.description}}</p>
    		</div>
    	</div>
    </div>
</script>
<script id="navigation" type="text/template">
  <li><a href="#step{{index}}">Step {{index}} {{0.name}}</a></li>
</script>