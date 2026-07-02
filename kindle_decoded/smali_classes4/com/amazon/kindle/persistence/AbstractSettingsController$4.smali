.class final Lcom/amazon/kindle/persistence/AbstractSettingsController$4;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 61
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/persistence/AbstractSettingsController$4;->getValue(Lcom/amazon/kindle/persistence/AndroidSharedPreferences;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
