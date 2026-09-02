<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CareTeam
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CareTeam</sch:title>
    <sch:rule context="f:CareTeam">
      <sch:assert test="count(f:category) &gt;= 1">category: minimum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 1">category: maximum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:participant) &gt;= 1">participant: minimum cardinality of 'participant' is 1</sch:assert>
      <sch:assert test="count(f:participant) &lt;= 1">participant: maximum cardinality of 'participant' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CareTeam/f:category</sch:title>
    <sch:rule context="f:CareTeam/f:category">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 1">coding: maximum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CareTeam/f:period</sch:title>
    <sch:rule context="f:CareTeam/f:period">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CareTeam/f:participant</sch:title>
    <sch:rule context="f:CareTeam/f:participant">
      <sch:assert test="count(f:extension[@url = 'https://fhir.inera.se/ig/careteam/StructureDefinition/riv-contact-via-team-extension']) &lt;= 1">extension with URL = 'https://fhir.inera.se/ig/careteam/StructureDefinition/riv-contact-via-team-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:role) &gt;= 1">role: minimum cardinality of 'role' is 1</sch:assert>
      <sch:assert test="count(f:member) &gt;= 1">member: minimum cardinality of 'member' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CareTeam/f:telecom</sch:title>
    <sch:rule context="f:CareTeam/f:telecom">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.inera.se/ig/careteam/StructureDefinition/RIVContactPointAvailability']) &lt;= 1">extension with URL = 'https://fhir.inera.se/ig/careteam/StructureDefinition/RIVContactPointAvailability': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:rank) &lt;= 1">rank: maximum cardinality of 'rank' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CareTeam/f:telecom/f:extension</sch:title>
    <sch:rule context="f:CareTeam/f:telecom/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CareTeam/f:telecom/f:extension/f:value[x] 1</sch:title>
    <sch:rule context="f:CareTeam/f:telecom/f:extension/f:value[x]">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:availableTime) &gt;= 1">availableTime: minimum cardinality of 'availableTime' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CareTeam/f:telecom/f:extension/f:value[x]/f:availableTime 1</sch:title>
    <sch:rule context="f:CareTeam/f:telecom/f:extension/f:value[x]/f:availableTime">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:daysOfWeek) &gt;= 1">daysOfWeek: minimum cardinality of 'daysOfWeek' is 1</sch:assert>
      <sch:assert test="count(f:allDay) &lt;= 1">allDay: maximum cardinality of 'allDay' is 1</sch:assert>
      <sch:assert test="count(f:availableStartTime) &lt;= 1">availableStartTime: maximum cardinality of 'availableStartTime' is 1</sch:assert>
      <sch:assert test="count(f:availableEndTime) &lt;= 1">availableEndTime: maximum cardinality of 'availableEndTime' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CareTeam/f:telecom/f:extension/f:value[x]/f:notAvailableTime 1</sch:title>
    <sch:rule context="f:CareTeam/f:telecom/f:extension/f:value[x]/f:notAvailableTime">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:description) &lt;= 1">description: maximum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:during) &lt;= 1">during: maximum cardinality of 'during' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
