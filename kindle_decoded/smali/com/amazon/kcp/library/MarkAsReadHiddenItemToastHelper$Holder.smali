.class final Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Holder;
.super Ljava/lang/Object;
.source "MarkAsReadHiddenItemToastHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Holder;

.field private static final INSTANCE:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Holder;

    invoke-direct {v0}, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Holder;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Holder;->INSTANCE:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Holder;

    .line 19
    new-instance v0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Holder;->INSTANCE:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSTANCE()Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Holder;->INSTANCE:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

    return-object v0
.end method
