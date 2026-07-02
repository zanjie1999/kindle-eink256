.class public final Lcom/amazon/kcp/application/SharedBindingsModule_GetAccessibilityStateListenerFactory;
.super Ljava/lang/Object;
.source "SharedBindingsModule_GetAccessibilityStateListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/application/SharedBindingsModule_GetAccessibilityStateListenerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetAccessibilityStateListenerFactory;

    invoke-direct {v0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetAccessibilityStateListenerFactory;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetAccessibilityStateListenerFactory;->INSTANCE:Lcom/amazon/kcp/application/SharedBindingsModule_GetAccessibilityStateListenerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kcp/application/SharedBindingsModule_GetAccessibilityStateListenerFactory;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetAccessibilityStateListenerFactory;->INSTANCE:Lcom/amazon/kcp/application/SharedBindingsModule_GetAccessibilityStateListenerFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetAccessibilityStateListenerFactory;->proxyGetAccessibilityStateListener()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    move-result-object v0

    return-object v0
.end method

.method public static proxyGetAccessibilityStateListener()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;
    .locals 2

    .line 28
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule;->getAccessibilityStateListener()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 27
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;
    .locals 1

    .line 15
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetAccessibilityStateListenerFactory;->provideInstance()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetAccessibilityStateListenerFactory;->get()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    move-result-object v0

    return-object v0
.end method
