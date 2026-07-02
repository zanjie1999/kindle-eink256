.class public Lcom/amazon/kindle/krx/library/BaseLibraryNavActionContext;
.super Lcom/amazon/kindle/krx/action/BaseActionContext;
.source "BaseLibraryNavActionContext.java"

# interfaces
.implements Lcom/amazon/kindle/krx/library/LibraryNavActionContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/kindle/krx/action/BaseActionContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getLibraryMode()Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
