//
//  UGuideConfig.swift
//  UGuide
//
//  Created by yanming on 2018/6/12.
//  Copyright © 2018年 wakeup. All rights reserved.
//

import UIKit

public enum UGuidePlatformType: Int{
    case wechatSession = 1
    case wechatTimeline
    case qq
    case sina
}
public enum UGuideResultType: Int{
    case success = 0
    case wechatError = -1
}
public class UGuideResult {
    let success: Bool
    let code : Int
    let message : String
    var authCode: String = ""
    init(_ b: Bool, code: Int, message: String) {
        self.success = b
        self.code = code
        self.message = message
    }
}

class UGuideConfig: NSObject {

}

public class UGuideMessageObject: NSObject {
    var title: String = ""
    var desc: String = ""
    var imgUrl : String = ""
    var img : UIImage = UIImage()
    var webpageUrl : String = ""
}


/*
 40001    invalid credential    不合法的调用凭证
 40002    invalid grant_type    不合法的grant_type
 40003    invalid openid    不合法的OpenID
 40004    invalid media type    不合法的媒体文件类型
 40007    invalid media_id    不合法的media_id
 40008    invalid message type    不合法的message_type
 40009    invalid image size    不合法的图片大小
 40010    invalid voice size    不合法的语音大小
 40011    invalid video size    不合法的视频大小
 40012    invalid thumb size    不合法的缩略图大小
 40013    invalid appid    不合法的AppID
 40014    invalid access_token    不合法的access_token
 40015    invalid menu type    不合法的菜单类型
 40016    invalid button size    不合法的菜单按钮个数
 40017    invalid button type    不合法的按钮类型
 40018    invalid button name size    不合法的按钮名称长度
 40019    invalid button key size    不合法的按钮KEY长度
 40020    invalid button url size    不合法的url长度
 40023    invalid sub button size    不合法的子菜单按钮个数
 40024    invalid sub button type    不合法的子菜单类型
 40025    invalid sub button name size    不合法的子菜单按钮名称长度
 40026    invalid sub button key size    不合法的子菜单按钮KEY长度
 40027    invalid sub button url size    不合法的子菜单按钮url长度
 40029    invalid code    不合法或已过期的code
 40030    invalid refresh_token    不合法的refresh_token
 40036    invalid template_id size    不合法的template_id长度
 40037    invalid template_id    不合法的template_id
 40039    invalid url size    不合法的url长度
 40048    invalid url domain    不合法的url域名
 40054    invalid sub button url domain    不合法的子菜单按钮url域名
 40055    invalid button url domain    不合法的菜单按钮url域名
 40066    invalid url    不合法的url
 41001    access_token missing    缺失access_token参数
 41002    appid missing    缺失appid参数
 41003    refresh_token missing    缺失refresh_token参数
 41004    appsecret missing    缺失secret参数
 41005    media data missing    缺失二进制媒体文件
 41006    media_id missing    缺失media_id参数
 41007    sub_menu data missing    缺失子菜单数据
 41008    missing code    缺失code参数
 41009    missing openid    缺失openid参数
 41010    missing url    缺失url参数
 42001    access_token expired    access_token超时
 42002    refresh_token expired    refresh_token超时
 42003    code expired    code超时
 43001    require GET method    需要使用GET方法请求
 43002    require POST method    需要使用POST方法请求
 43003    require https    需要使用HTTPS
 43004    require subscribe    需要订阅关系
 44001    empty media data    空白的二进制数据
 44002    empty post data    空白的POST数据
 44003    empty news data    空白的news数据
 44004    empty content    空白的内容
 44005    empty list size    空白的列表
 45001    media size out of limit    二进制文件超过限制
 45002    content size out of limit    content参数超过限制
 45003    title size out of limit    title参数超过限制
 45004    description size out of limit    description参数超过限制
 45005    url size out of limit    url参数长度超过限制
 45006    picurl size out of limit    picurl参数超过限制
 45007    playtime out of limit    播放时间超过限制（语音为60s最大）
 45008    article size out of limit    article参数超过限制
 45009    api freq out of limit    接口调动频率超过限制
 45010    create menu limit    建立菜单被限制
 45011    api limit    频率限制
 45012    template size out of limit    模板大小超过限制
 45016    can't modify sys group    不能修改默认组
 45017    can't set group name too long sys group    修改组名过长
 45018    too many group now, no need to add new    组数量过多
 50001    api unauthorized    接口未授权
 
 QQApiSendResultCode:
 EQQAPISENDSUCESS = 0,
 EQQAPIQQNOTINSTALLED = 1,  //QQ未安装
 EQQAPIQQNOTSUPPORTAPI = 2,  // QQ api不支持
 EQQAPIMESSAGETYPEINVALID = 3,
 EQQAPIMESSAGECONTENTNULL = 4,
 EQQAPIMESSAGECONTENTINVALID = 5,
 EQQAPIAPPNOTREGISTED = 6,
 EQQAPIAPPSHAREASYNC = 7,
 EQQAPIQQNOTSUPPORTAPI_WITH_ERRORSHOW = 8,  //QQ api不支持 && SDK显示error提示（已废弃）
 EQQAPIMESSAGEARKCONTENTNULL = 9,  //ark内容为空
 EQQAPISENDFAILD = -1,  //发送失败
 EQQAPISHAREDESTUNKNOWN = -2, //未指定分享到QQ或TIM
 EQQAPITIMSENDFAILD = -3,  //发送失败
 
 EQQAPITIMNOTINSTALLED = 11, //TIM未安装
 EQQAPITIMNOTSUPPORTAPI = 12, // TIM api不支持
 
 EQQAPIQZONENOTSUPPORTTEXT = 10000,  //qzone分享不支持text类型分享
 EQQAPIQZONENOTSUPPORTIMAGE = 10001,  //qzone分享不支持image类型分享
 EQQAPIVERSIONNEEDUPDATE = 10002,  //当前QQ版本太低，需要更新至新版本才可以支持
 ETIMAPIVERSIONNEEDUPDATE = 10004,  //当前TIM版本太低，需要更新至新版本才可以支持
 
 WeiboSDKResponseStatusCodeSuccess               = 0,//成功
 WeiboSDKResponseStatusCodeUserCancel            = -1,//用户取消发送
 WeiboSDKResponseStatusCodeSentFail              = -2,//发送失败
 WeiboSDKResponseStatusCodeAuthDeny              = -3,//授权失败
 WeiboSDKResponseStatusCodeUserCancelInstall     = -4,//用户取消安装微博客户端
 WeiboSDKResponseStatusCodePayFail               = -5,//支付失败
 WeiboSDKResponseStatusCodeShareInSDKFailed      = -8,//分享失败 详情见response UserInfo
 WeiboSDKResponseStatusCodeUnsupport             = -99,//不支持的请求
 WeiboSDKResponseStatusCodeUnknown               = -100,
 */
