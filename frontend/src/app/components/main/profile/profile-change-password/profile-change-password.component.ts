import { Component, OnInit } from '@angular/core';
import { DataService } from '../../../../services/data.service';
import { BannerOptions } from '../../../../utils/banner/banner';

const SUCCESS_COLOR = 'alert alert-success';
const ERROR_COLOR = 'alert alert-danger';

@Component({
  selector: 'app-profile-change-password',
  templateUrl: './profile-change-password.component.html',
  styleUrls: ['./profile-change-password.component.css']
})
export class ProfileChangePasswordComponent implements OnInit {

  currentPassword: string;
  newPassword: string;
  confirmPassword: string;
  banner: BannerOptions;

  constructor(
    private dataService: DataService
  ) {
  }

  changePassword() {
    this.dataService.changePassword(this.currentPassword, this.newPassword, this.confirmPassword).subscribe(
      (result) => {
        this.banner = new BannerOptions('', result, SUCCESS_COLOR, true);
      },
      (error) => {
        this.banner = new BannerOptions('', error.error, ERROR_COLOR, true);
      }
    );
  }

  ngOnInit(): void {
    this.banner = new BannerOptions();
  }

  closeBanner() {
    this.banner = new BannerOptions();
  }

}
