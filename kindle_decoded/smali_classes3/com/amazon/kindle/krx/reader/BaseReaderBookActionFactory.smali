.class public Lcom/amazon/kindle/krx/reader/BaseReaderBookActionFactory;
.super Lcom/amazon/kindle/krx/action/BaseActionFactory;
.source "BaseReaderBookActionFactory.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/ReaderBookActionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/action/BaseActionFactory<",
        "Lcom/amazon/kindle/krx/reader/ReaderBookAction;",
        "Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;",
        ">;",
        "Lcom/amazon/kindle/krx/reader/ReaderBookActionFactory;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/kindle/krx/action/BaseActionFactory;-><init>()V

    return-void
.end method
