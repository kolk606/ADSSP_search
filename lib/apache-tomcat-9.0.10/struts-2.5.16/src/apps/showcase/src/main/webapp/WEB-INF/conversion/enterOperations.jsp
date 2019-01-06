<!--
/*
* Licensed to the Apache Software Foundation (ASF) under one
* or more contributor license agreements.  See the NOTICE file
* distributed with this work for additional information
* regarding copyright ownership.  The ASF licenses this file
* to you under the Apache License, Version 2.0 (the
* "License"); you may not use this file except in compliance
* with the License.  You may obtain a copy of the License at
*
*  http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing,
* software distributed under the License is distributed on an
* "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
* KIND, either express or implied.  See the License for the
* specific language governing permissions and limitations
* under the License.
*/
-->
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<title>Struts2 Showcase - Conversion - Tiger 5 Enum</title>
</head>
<body>
<div class="page-header">
	<h1>Conversion - Tiger 5 Enum</h1>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">


			See the jsp code <s:url var="url" action="showEnumJspCode" namespace="/conversion" /><s:a href="%{#url}">here.</s:a><br/>
			See the code for OperationsEnum.java <s:url var="url" action="showOperationsEnumJavaCode" namespace="/conversion" /><s:a href="%{#url}">here.</s:a><br/>
			See the code for OperationsEnumAction.java <s:url var="url" action="showOperationEnumActionJavaCode" namespace="/conversion" /><s:a href="%{#url}">here.</s:a><br/>
			See the code for EnumTypeConverter.java  <s:url var="url" action="showEnumTypeConverterJavaCode" namespace="/conversion" /><s:a href="%{#url}">here.</s:a><br/>
			See the properties for OperationsEnumAction-conversion.properties <s:url var="url" action="showOperationsEnumActionConversionProperties" namespace="/conversion" /><s:a href="%{#url}">here.</s:a>
			<br/>
			<br/>

				<s:form action="submitOperationEnumInfo" namespace="/conversion">
					<s:checkboxlist label="Operations"
									name="selectedOperations"
									list="%{availableOperations}"
									listKey="name()"
									listValue="name()"
									/>
					<s:submit cssClass="btn btn-primary"/>
				</s:form>

		</div>
	</div>
</div>
</body>
</html>