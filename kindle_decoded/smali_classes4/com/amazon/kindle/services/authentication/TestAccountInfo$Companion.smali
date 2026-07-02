.class public final Lcom/amazon/kindle/services/authentication/TestAccountInfo$Companion;
.super Ljava/lang/Object;
.source "TestAccountInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/services/authentication/TestAccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kindle/services/authentication/TestAccountInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getROLE()Lcom/amazon/kindle/services/authentication/Role;
    .locals 1

    .line 18
    invoke-static {}, Lcom/amazon/kindle/services/authentication/TestAccountInfo;->access$getROLE$cp()Lcom/amazon/kindle/services/authentication/Role;

    move-result-object v0

    return-object v0
.end method
