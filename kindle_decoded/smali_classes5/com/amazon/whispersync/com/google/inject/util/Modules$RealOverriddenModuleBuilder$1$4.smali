.class Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$4;
.super Lcom/amazon/whispersync/com/google/inject/spi/DefaultBindingScopingVisitor;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->getScopeInstanceOrNull(Lcom/amazon/whispersync/com/google/inject/Binding;)Lcom/amazon/whispersync/com/google/inject/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/spi/DefaultBindingScopingVisitor<",
        "Lcom/amazon/whispersync/com/google/inject/Scope;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$4;->this$1:Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/spi/DefaultBindingScopingVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitScope(Lcom/amazon/whispersync/com/google/inject/Scope;)Lcom/amazon/whispersync/com/google/inject/Scope;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic visitScope(Lcom/amazon/whispersync/com/google/inject/Scope;)Ljava/lang/Object;
    .locals 0

    .line 275
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$4;->visitScope(Lcom/amazon/whispersync/com/google/inject/Scope;)Lcom/amazon/whispersync/com/google/inject/Scope;

    move-result-object p1

    return-object p1
.end method
