.class public Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesProvider$PreferencesNameHolder;
.super Ljava/lang/Object;
.source "SharedPreferencesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferencesNameHolder"
.end annotation


# instance fields
.field protected value:Ljava/lang/String;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
        optional = true
    .end annotation

    .annotation runtime Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesName;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
