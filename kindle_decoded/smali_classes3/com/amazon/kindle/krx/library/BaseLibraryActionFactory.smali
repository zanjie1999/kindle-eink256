.class public Lcom/amazon/kindle/krx/library/BaseLibraryActionFactory;
.super Lcom/amazon/kindle/krx/action/BaseActionFactory;
.source "BaseLibraryActionFactory.java"

# interfaces
.implements Lcom/amazon/kindle/krx/library/LibraryActionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/action/BaseActionFactory<",
        "Lcom/amazon/kindle/krx/library/LibraryAction;",
        "Lcom/amazon/kindle/krx/library/LibraryActionContext;",
        ">;",
        "Lcom/amazon/kindle/krx/library/LibraryActionFactory;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/kindle/krx/action/BaseActionFactory;-><init>()V

    return-void
.end method
