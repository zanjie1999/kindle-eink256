.class public Lcom/amazon/identity/auth/device/fn$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/fn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public mL:Lorg/json/JSONObject;

.field public mM:Ljava/lang/Integer;

.field public mN:Ljava/lang/Exception;

.field public mO:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/amazon/identity/auth/device/fn$a;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Exception;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/amazon/identity/auth/device/fn$a;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Exception;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Exception;Ljava/lang/Integer;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fn$a;->mM:Ljava/lang/Integer;

    .line 52
    iput-object p2, p0, Lcom/amazon/identity/auth/device/fn$a;->mL:Lorg/json/JSONObject;

    .line 53
    iput-object p3, p0, Lcom/amazon/identity/auth/device/fn$a;->mN:Ljava/lang/Exception;

    .line 54
    iput-object p4, p0, Lcom/amazon/identity/auth/device/fn$a;->mO:Ljava/lang/Integer;

    return-void
.end method
