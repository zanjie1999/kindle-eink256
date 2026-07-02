.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AaSettingSeekBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->init(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $tickMarksEnabled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$1;->$tickMarksEnabled:Z

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 145
    iget-boolean v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$1;->$tickMarksEnabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method
