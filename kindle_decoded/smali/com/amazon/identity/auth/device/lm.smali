.class public Lcom/amazon/identity/auth/device/lm;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final tZ:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lm;->tZ:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public im()Lorg/json/JSONObject;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lm;->tZ:Lorg/json/JSONObject;

    return-object v0
.end method
