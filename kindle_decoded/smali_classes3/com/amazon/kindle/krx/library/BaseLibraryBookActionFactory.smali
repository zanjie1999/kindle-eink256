.class public Lcom/amazon/kindle/krx/library/BaseLibraryBookActionFactory;
.super Lcom/amazon/kindle/krx/action/BaseActionFactory;
.source "BaseLibraryBookActionFactory.java"

# interfaces
.implements Lcom/amazon/kindle/krx/library/LibraryBookActionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/action/BaseActionFactory<",
        "Lcom/amazon/kindle/krx/library/LibraryBookAction;",
        "Lcom/amazon/kindle/krx/library/LibraryBookActionContext;",
        ">;",
        "Lcom/amazon/kindle/krx/library/LibraryBookActionFactory;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/kindle/krx/action/BaseActionFactory;-><init>()V

    return-void
.end method
