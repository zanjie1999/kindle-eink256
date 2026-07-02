.class public Lcom/amazon/kcp/home/HomeRefreshControl$ListenerAdapter;
.super Ljava/lang/Object;
.source "HomeRefreshControl.kt"

# interfaces
.implements Lcom/amazon/kcp/home/HomeRefreshControl$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/HomeRefreshControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeRefresh()V
    .locals 0

    return-void
.end method
