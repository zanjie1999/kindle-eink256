.class public Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardsFullyShownEvent;
.super Ljava/lang/Object;
.source "InfoCardContainer.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/InfoCardContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoCardsFullyShownEvent"
.end annotation


# instance fields
.field public final container:Lcom/amazon/kcp/reader/ui/InfoCardContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)V
    .locals 0

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardsFullyShownEvent;->container:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
