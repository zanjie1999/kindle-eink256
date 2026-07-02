.class public Lcom/amazon/kcp/search/autocomplete/AutoCompleteUtils;
.super Ljava/lang/Object;
.source "AutoCompleteUtils.java"


# direct methods
.method public static bookSupportsAutoComplete(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 0

    .line 37
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isAutoCompleteEnabled()Z
    .locals 1

    .line 24
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->areAutoCompleteSuggestionsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isReleaseBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
