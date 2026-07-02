.class public Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;
.super Ljava/lang/Object;
.source "IPluginRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/IPluginRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginConfig"
.end annotation


# instance fields
.field public final max:I

.field public final min:I

.field public final name:Ljava/lang/String;

.field public final roles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/plugin/Plugin$Role;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/plugin/Plugin$Role;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;->name:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;->min:I

    .line 63
    iput p3, p0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;->max:I

    .line 64
    iput-object p4, p0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;->roles:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 80
    instance-of v0, p1, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    if-eqz v0, :cond_1

    .line 82
    check-cast p1, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 89
    iget-object p1, p1, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 74
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
