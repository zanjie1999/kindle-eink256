package com.amazon.dcp.framework;

/**
 * It is expected the every DCP component will implement a bound service
 * that supplies all the information about that particular service.
 *
 */
interface IDCPComponentInformationProvider
{
    String getComponentVersion();
}