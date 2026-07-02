package com.amazon.kindle.cms.ipc;

import com.amazon.kindle.cms.ipc.CMSServiceCalls;
import com.amazon.kindle.cms.ipc.VerbExtrasInfo;

interface AppCallback
{
    oneway void sync(CMSServiceCalls service, String sourceId);
    int[] execute(CMSServiceCalls service, String sourceId, in String[] libraryIds, in String[] itemIds, String verb);
    oneway void notifyAction(CMSServiceCalls service, String sourceId, String libraryId, String itemId, String verb);

    int[] executeEx(CMSServiceCalls service, String sourceId, in String[] libraryIds, in String[] itemIds, String verb, in VerbExtrasInfo[] verbExtras);
}