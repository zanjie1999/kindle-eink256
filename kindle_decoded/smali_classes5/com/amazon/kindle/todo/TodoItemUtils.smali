.class public Lcom/amazon/kindle/todo/TodoItemUtils;
.super Ljava/lang/Object;
.source "TodoItemUtils.java"


# direct methods
.method public static getBoolean(Lcom/amazon/kindle/krx/messaging/ITodoItem;Ljava/lang/String;Z)Z
    .locals 0

    .line 24
    invoke-interface {p0}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "1"

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 30
    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
