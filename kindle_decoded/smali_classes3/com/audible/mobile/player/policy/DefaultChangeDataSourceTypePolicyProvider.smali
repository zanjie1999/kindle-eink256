.class public Lcom/audible/mobile/player/policy/DefaultChangeDataSourceTypePolicyProvider;
.super Ljava/lang/Object;
.source "DefaultChangeDataSourceTypePolicyProvider.java"

# interfaces
.implements Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicyForDataTypes(Lcom/audible/mobile/player/AudioDataSourceType;Lcom/audible/mobile/player/AudioDataSourceType;)Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;
    .locals 0

    .line 19
    sget-object p1, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;->Default:Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

    return-object p1
.end method
