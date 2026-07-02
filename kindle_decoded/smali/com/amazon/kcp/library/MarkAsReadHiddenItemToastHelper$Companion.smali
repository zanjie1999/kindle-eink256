.class public final Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion;
.super Ljava/lang/Object;
.source "MarkAsReadHiddenItemToastHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;
    .locals 2

    invoke-static {}, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->access$getInstance$cp()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->Companion:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

    return-object v0
.end method
