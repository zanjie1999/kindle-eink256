.class synthetic Lcom/amazon/discovery/DiscoveryProvider$1;
.super Ljava/lang/Object;
.source "DiscoveryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/discovery/DiscoveryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$discovery$DependencyType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 125
    invoke-static {}, Lcom/amazon/discovery/DependencyType;->values()[Lcom/amazon/discovery/DependencyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/discovery/DiscoveryProvider$1;->$SwitchMap$com$amazon$discovery$DependencyType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/discovery/DependencyType;->OPTIONAL_UNIQUE:Lcom/amazon/discovery/DependencyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/discovery/DiscoveryProvider$1;->$SwitchMap$com$amazon$discovery$DependencyType:[I

    sget-object v1, Lcom/amazon/discovery/DependencyType;->REQUIRED_UNIQUE:Lcom/amazon/discovery/DependencyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/discovery/DiscoveryProvider$1;->$SwitchMap$com$amazon$discovery$DependencyType:[I

    sget-object v1, Lcom/amazon/discovery/DependencyType;->DISCOVERIES:Lcom/amazon/discovery/DependencyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
