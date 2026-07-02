.class final Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;
.super Ljava/lang/Object;
.source "Modules.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/util/Modules$OverriddenModuleBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/util/Modules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RealOverriddenModuleBuilder"
.end annotation


# instance fields
.field private final baseModules:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;->baseModules:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;Lcom/amazon/whispersync/com/google/inject/util/Modules$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;->baseModules:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-object p0
.end method


# virtual methods
.method public with(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Module;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/Module;"
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;-><init>(Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public varargs with([Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Module;
    .locals 0

    .line 144
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;->with(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Module;

    move-result-object p1

    return-object p1
.end method
