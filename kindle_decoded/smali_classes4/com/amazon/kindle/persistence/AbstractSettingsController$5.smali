.class final Lcom/amazon/kindle/persistence/AbstractSettingsController$5;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/persistence/AbstractSettingsController$5;->getValue(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-virtual {p1, p2, p3}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
