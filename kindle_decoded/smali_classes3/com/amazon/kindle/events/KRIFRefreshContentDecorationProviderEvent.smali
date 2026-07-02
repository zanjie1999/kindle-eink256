.class public Lcom/amazon/kindle/events/KRIFRefreshContentDecorationProviderEvent;
.super Ljava/lang/Object;
.source "KRIFRefreshContentDecorationProviderEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field decorationProvider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kindle/events/KRIFRefreshContentDecorationProviderEvent;->decorationProvider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    return-void
.end method


# virtual methods
.method public getDecorationProvider()Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/events/KRIFRefreshContentDecorationProviderEvent;->decorationProvider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
