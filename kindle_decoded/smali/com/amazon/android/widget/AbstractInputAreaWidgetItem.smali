.class public abstract Lcom/amazon/android/widget/AbstractInputAreaWidgetItem;
.super Ljava/lang/Object;
.source "AbstractInputAreaWidgetItem.java"

# interfaces
.implements Lcom/amazon/android/widget/IInternalWidgetItem;
.implements Lcom/amazon/android/widget/IWidgetItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getData(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getPlaceholderText(Landroid/content/Context;)Ljava/lang/String;
.end method
