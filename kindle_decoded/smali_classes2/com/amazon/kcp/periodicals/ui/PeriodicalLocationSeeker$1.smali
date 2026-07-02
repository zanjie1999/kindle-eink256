.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$1;
.super Ljava/lang/Object;
.source "PeriodicalLocationSeeker.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$1;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 46
    sget-object p1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLOR_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$1;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->access$000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$1;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    invoke-static {p2, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->access$100(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    :cond_0
    return-void
.end method
