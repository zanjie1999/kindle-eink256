.class public Lcom/amazon/kindle/s2k/SendToKindlePreferences;
.super Ljava/lang/Object;
.source "SendToKindlePreferences.java"


# static fields
.field private static final prefFile:Ljava/lang/String; = "com.amazon.kindle.s2k"


# instance fields
.field private stkPreferences:Landroid/content/SharedPreferences;

.field private stkPreferencesEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.amazon.kindle.s2k"

    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->stkPreferences:Landroid/content/SharedPreferences;

    .line 27
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->stkPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->stkPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->stkPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->stkPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->stkPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->stkPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 69
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->stkPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public putInt(Ljava/lang/String;I)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->stkPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 81
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->stkPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->stkPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->stkPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method
