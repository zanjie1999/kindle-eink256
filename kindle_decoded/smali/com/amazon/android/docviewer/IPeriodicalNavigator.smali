.class public interface abstract Lcom/amazon/android/docviewer/IPeriodicalNavigator;
.super Ljava/lang/Object;
.source "IPeriodicalNavigator.java"

# interfaces
.implements Lcom/amazon/nwstd/docviewer/INewsstandNavigator;


# static fields
.field public static final CURRENT_PAGE:Lcom/amazon/android/docviewer/mapper/PageIndex;

.field public static final SHOW_IMAGEVIEW_WITHOUT_NAVIGATING:Lcom/amazon/android/docviewer/mapper/PageIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/amazon/android/docviewer/mapper/PageIndex;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    sput-object v0, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->SHOW_IMAGEVIEW_WITHOUT_NAVIGATING:Lcom/amazon/android/docviewer/mapper/PageIndex;

    .line 24
    new-instance v0, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    sput-object v0, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->CURRENT_PAGE:Lcom/amazon/android/docviewer/mapper/PageIndex;

    return-void
.end method


# virtual methods
.method public abstract openImageViewAt(Lcom/amazon/android/docviewer/mapper/PageIndex;ZZ)V
.end method

.method public abstract openTextViewAt(IZZ)V
.end method
