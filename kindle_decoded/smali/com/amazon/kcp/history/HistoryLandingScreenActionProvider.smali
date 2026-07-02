.class public Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;
.super Ljava/lang/Object;
.source "HistoryLandingScreenActionProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$HistoryActionWidgetItem;
    }
.end annotation


# static fields
.field private static final HISTORY_ACTION_BUTTON_ID:Ljava/lang/String; = "HistoryActionId"

.field private static final HISTORY_ACTION_PRIORITY:I = 0x64


# instance fields
.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;",
            ")",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance p1, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$HistoryActionWidgetItem;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$HistoryActionWidgetItem;-><init>(Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider$1;)V

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;->get(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    move-result-object p1

    return-object p1
.end method
