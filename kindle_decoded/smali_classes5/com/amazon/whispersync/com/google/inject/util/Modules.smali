.class public final Lcom/amazon/whispersync/com/google/inject/util/Modules;
.super Ljava/lang/Object;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/util/Modules$ModuleWriter;,
        Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;,
        Lcom/amazon/whispersync/com/google/inject/util/Modules$OverriddenModuleBuilder;
    }
.end annotation


# static fields
.field public static final EMPTY_MODULE:Lcom/amazon/whispersync/com/google/inject/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/util/Modules$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/util/Modules$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/util/Modules;->EMPTY_MODULE:Lcom/amazon/whispersync/com/google/inject/Module;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combine(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Module;
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

    .line 109
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p0

    .line 110
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/util/Modules$2;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/util/Modules$2;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static varargs combine([Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Module;
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of([Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/util/Modules;->combine(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Module;

    move-result-object p0

    return-object p0
.end method

.method public static override(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/util/Modules$OverriddenModuleBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/util/Modules$OverriddenModuleBuilder;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;-><init>(Ljava/lang/Iterable;Lcom/amazon/whispersync/com/google/inject/util/Modules$1;)V

    return-object v0
.end method

.method public static varargs override([Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/util/Modules$OverriddenModuleBuilder;
    .locals 2

    .line 75
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;-><init>(Ljava/lang/Iterable;Lcom/amazon/whispersync/com/google/inject/util/Modules$1;)V

    return-object v0
.end method
