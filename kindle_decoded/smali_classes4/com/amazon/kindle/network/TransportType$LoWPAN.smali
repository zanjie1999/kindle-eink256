.class public final Lcom/amazon/kindle/network/TransportType$LoWPAN;
.super Lcom/amazon/kindle/network/TransportType;
.source "NetworkProperties.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/network/TransportType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoWPAN"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/network/TransportType$LoWPAN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/amazon/kindle/network/TransportType$LoWPAN;

    invoke-direct {v0}, Lcom/amazon/kindle/network/TransportType$LoWPAN;-><init>()V

    sput-object v0, Lcom/amazon/kindle/network/TransportType$LoWPAN;->INSTANCE:Lcom/amazon/kindle/network/TransportType$LoWPAN;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "LoWPAN"

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/network/TransportType;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
