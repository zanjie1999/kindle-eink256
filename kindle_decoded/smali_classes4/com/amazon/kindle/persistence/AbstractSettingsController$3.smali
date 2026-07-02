.class final Lcom/amazon/kindle/persistence/AbstractSettingsController$3;
.super Ljava/lang/Object;
.source "AbstractSettingsController.java"

# interfaces
.implements Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/persistence/AbstractSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/persistence/AbstractSettingsController$PrefsAdapter<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    .line 54
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/persistence/AbstractSettingsController$3;->getValue(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
