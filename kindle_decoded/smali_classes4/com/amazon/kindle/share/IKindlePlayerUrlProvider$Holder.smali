.class public final Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder;
.super Ljava/lang/Object;
.source "IKindlePlayerUrlProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/share/IKindlePlayerUrlProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder;

.field private static provider:Lcom/amazon/kindle/share/IKindlePlayerUrlProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder;

    invoke-direct {v0}, Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder;-><init>()V

    sput-object v0, Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder;->INSTANCE:Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder;

    .line 17
    new-instance v0, Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder$provider$1;

    invoke-direct {v0}, Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder$provider$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder;->provider:Lcom/amazon/kindle/share/IKindlePlayerUrlProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProvider()Lcom/amazon/kindle/share/IKindlePlayerUrlProvider;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder;->provider:Lcom/amazon/kindle/share/IKindlePlayerUrlProvider;

    return-object v0
.end method
