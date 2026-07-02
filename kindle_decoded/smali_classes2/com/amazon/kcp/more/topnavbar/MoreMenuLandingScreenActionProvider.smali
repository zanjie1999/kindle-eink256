.class public Lcom/amazon/kcp/more/topnavbar/MoreMenuLandingScreenActionProvider;
.super Ljava/lang/Object;
.source "MoreMenuLandingScreenActionProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/more/topnavbar/MoreMenuLandingScreenActionProvider$SettingsActionWidgetItem;
    }
.end annotation


# static fields
.field private static final SETTINGS_ACTION_BUTTON_ID:Ljava/lang/String; = "SettingsActionId"

.field private static final SETTINGS_ACTION_PRIORITY:I = 0x64


# instance fields
.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/more/topnavbar/MoreMenuLandingScreenActionProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/more/topnavbar/MoreMenuLandingScreenActionProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/more/topnavbar/MoreMenuLandingScreenActionProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

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

    .line 35
    new-instance p1, Lcom/amazon/kcp/more/topnavbar/MoreMenuLandingScreenActionProvider$SettingsActionWidgetItem;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/more/topnavbar/MoreMenuLandingScreenActionProvider$SettingsActionWidgetItem;-><init>(Lcom/amazon/kcp/more/topnavbar/MoreMenuLandingScreenActionProvider;Lcom/amazon/kcp/more/topnavbar/MoreMenuLandingScreenActionProvider$1;)V

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/more/topnavbar/MoreMenuLandingScreenActionProvider;->get(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    move-result-object p1

    return-object p1
.end method
