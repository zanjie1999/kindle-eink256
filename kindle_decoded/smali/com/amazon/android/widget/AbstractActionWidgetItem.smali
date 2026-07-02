.class public abstract Lcom/amazon/android/widget/AbstractActionWidgetItem;
.super Lcom/amazon/android/widget/AbstractInternalWidgetItem;
.source "AbstractActionWidgetItem.java"

# interfaces
.implements Lcom/amazon/android/widget/IWidgetItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/android/widget/AbstractInternalWidgetItem;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract synthetic getButtonIdentifier()Ljava/lang/String;
.end method

.method public abstract onClick(Landroid/content/Context;)Z
.end method
