.class public Lcom/amazon/kindle/krx/library/BaseLibraryNavActionFactory;
.super Lcom/amazon/kindle/krx/action/BaseActionFactory;
.source "BaseLibraryNavActionFactory.java"

# interfaces
.implements Lcom/amazon/kindle/krx/library/LibraryNavActionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/action/BaseActionFactory<",
        "Lcom/amazon/kindle/krx/library/LibraryNavAction;",
        "Lcom/amazon/kindle/krx/library/LibraryNavActionContext;",
        ">;",
        "Lcom/amazon/kindle/krx/library/LibraryNavActionFactory;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/kindle/krx/action/BaseActionFactory;-><init>()V

    return-void
.end method
