.class public Lcom/amazon/kindle/krx/accessibility/BaseAccessibilityManager;
.super Ljava/lang/Object;
.source "BaseAccessibilityManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/accessibility/IAccessibilityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isScreenReaderEnabled()Z
    .locals 1

    .line 10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public screenReaderReadsToggleState()Z
    .locals 1

    .line 16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
