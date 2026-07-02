<?xml version="1.0" encoding="UTF-8"?>
<!-- 
  This transforms plugin configuration xmls generated from PluginCodeGen.java into an IPluginRegistry implementation. The schema of the xml is:
  
  <plugins>
    <packageName>java_package_name_for_the_generated_class</packageName>
    <classname>name_of_the_generated_class</classname>
    <entry entry="application">
      <plugin name="sample" min="8" max="15">com.amazon.kindle.krx.sample.SamplePlugin</plugin>
      ...
    </entry>
    ...
  </plugins>
-->

<xsl:stylesheet 
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>

  <xsl:template match="/">
<xsl:text disable-output-escaping="yes">
/**
 * Auto-generated plugin registry on </xsl:text><xsl:value-of select="plugins/time"/><xsl:text disable-output-escaping="yes">
 * 
 * DO NOT MODIFIY!!!!
 * 
 */
package </xsl:text><xsl:value-of select="plugins/packageName"/><xsl:text disable-output-escaping="yes">;

import java.util.HashMap;
import java.util.Map;
import java.util.Collections;
import java.util.EnumSet;

import com.amazon.kindle.krx.plugin.Plugin.Entry;
import com.amazon.kindle.krx.plugin.Plugin.Role;
import com.amazon.kindle.krx.plugin.IReaderPlugin;
import com.amazon.kindle.krx.IPluginRegistry;

public class </xsl:text><xsl:value-of select="plugins/classname"/><xsl:text disable-output-escaping="yes"> implements IPluginRegistry
{
    </xsl:text>
    <xsl:for-each select="plugins/entry">
    private Map&lt;PluginConfig, IReaderPlugin&gt; <xsl:value-of select="@entry"/>Plugins = null;
    </xsl:for-each>
    
    <xsl:for-each select="plugins/entry">
    private void init<xsl:value-of select="@entry"/>Plugins()
    {
        <xsl:value-of select="@entry"/>Plugins = new HashMap&lt;PluginConfig, IReaderPlugin&gt;();
        PluginConfig config = null;
        IReaderPlugin plugin = null;
        <xsl:for-each select="./plugin">
        config = new PluginConfig("<xsl:value-of select="@name"/>", <xsl:value-of select="@min"/>, <xsl:value-of select="@max"/>, <xsl:value-of select="@roles"/>);
        plugin = new <xsl:value-of select="."/>();
        <xsl:value-of select="../@entry"/>Plugins.put(config, plugin);
        </xsl:for-each>
    }
    </xsl:for-each>
    
    public Map&lt;PluginConfig, IReaderPlugin&gt; getPlugin(Entry entry)
    {
        switch(entry)
        {
            <xsl:for-each select="plugins/entry">
            case <xsl:value-of select="@entry"/>:
                if(<xsl:value-of select="@entry"/>Plugins == null)
                {
                    init<xsl:value-of select="@entry"/>Plugins();
                }
                return <xsl:value-of select="@entry"/>Plugins;
            </xsl:for-each>
            default:
                break;
        }        
        return Collections.emptyMap();
    }
}
  </xsl:template>
</xsl:stylesheet> 