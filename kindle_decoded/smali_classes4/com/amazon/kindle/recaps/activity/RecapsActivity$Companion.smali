.class public final Lcom/amazon/kindle/recaps/activity/RecapsActivity$Companion;
.super Ljava/lang/Object;
.source "RecapsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/recaps/activity/RecapsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 453
    invoke-direct {p0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRecapsLastReadPositionModel()Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;
    .locals 1

    .line 456
    invoke-static {}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getRecapsLastReadPositionModel$cp()Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    move-result-object v0

    return-object v0
.end method
