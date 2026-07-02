.class Lcom/amazon/kindle/map/AuthPortalInfoProvider$1;
.super Ljava/lang/Object;
.source "AuthPortalInfoProvider.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/map/AuthPortalInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/map/AuthPortalInfoProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/map/AuthPortalInfoProvider;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/kindle/map/AuthPortalInfoProvider$1;->this$0:Lcom/amazon/kindle/map/AuthPortalInfoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 76
    sget-object p1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->AUTH_PORTAL_MAPPINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/amazon/kindle/map/AuthPortalInfoProvider$1;->this$0:Lcom/amazon/kindle/map/AuthPortalInfoProvider;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->access$002(Lcom/amazon/kindle/map/AuthPortalInfoProvider;Z)Z

    :cond_0
    return-void
.end method
